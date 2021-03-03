import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:providers/models/weather.dart';
import 'package:providers/my_globals.dart';
import 'package:providers/view_models/weather_view_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OldSearchModel with ChangeNotifier {
  SharedPreferences _cityPref;

  OldSearchModel(BuildContext context) {
    SharedPreferences.getInstance().then((value) => _cityPref = value);
  }
  addCitytoSf({@required int index, @required Weather weather}) async {
    List<String> savedCity = [
      weather.title,
      weather.consolidatedWeather[0].maxTemp.toString(),
      weather.consolidatedWeather[0].minTemp.toString(),
      weather.consolidatedWeather[0].theTemp.toString(),
      weather.consolidatedWeather[0].weatherStateAbbr,
    ];

    _cityPref.setStringList("city" + index.toString(), savedCity);
    if (_cityPref.containsKey("city" + index.toString())) {
      debugPrint("${"city" + index.toString()} dolduruldu.");
    }
  }

  List<String> getCityfromSf(@required int index) {
    try {
      List<String> cityList =
          _cityPref.getStringList("city" + index.toString());

      return cityList;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  List<List<String>> getAllCityFromSf() {
    List<List<String>> cities = [];

    getCityfromSf(1) != null ? cities.add(getCityfromSf(1)) : null;
    getCityfromSf(2) != null ? cities.add(getCityfromSf(2)) : null;
    getCityfromSf(3) != null ? cities.add(getCityfromSf(3)) : null;
    getCityfromSf(4) != null ? cities.add(getCityfromSf(4)) : null;
    getCityfromSf(5) != null ? cities.add(getCityfromSf(5)) : null;

    return cities;
  }

  deleteCity(int index) {
    _cityPref.remove("city" + index.toString());
    notifyListeners();
  }
}
