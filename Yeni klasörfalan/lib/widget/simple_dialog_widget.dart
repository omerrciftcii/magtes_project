import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/my_globals.dart';
import 'package:providers/view_models/old_searchs_model.dart';
import 'package:providers/view_models/weather_view_model.dart';
import 'package:providers/main.dart';
import 'package:providers/widget/select_city_screen.dart';

class SimpleDialogWidget extends StatelessWidget {
  int cityList;
  SimpleDialogWidget(this.cityList) {}
  @override
  Widget build(BuildContext context) {
    context = myGlobals.scaffoldKey.currentContext;

    TextEditingController _controller = TextEditingController();
    return SimpleDialog(
      title: Text("Please write city name"),
      backgroundColor: Colors.teal.shade300,
      children: [
        TextField(
          autofocus: true,
          controller: _controller,
        ),
        ButtonBar(
          children: [
            RaisedButton(
              child: Icon(Icons.save_alt_outlined),
              onPressed: () {
                debugPrint("Dialog button was triggard");
                Provider.of<WeatherViewModel>(context, listen: false)
                    .getWeather(_controller.text)
                    .then(
                      (value) =>
                          Provider.of<OldSearchModel>(context, listen: false)
                              .addCitytoSf(
                                  index: cityList+ 1, weather: value),
                    );
                Navigator.pop(context);
              },
            )
          ],
        )
      ],
    );

    //debugPrint("simpleDialog is activated"),
  }
}
