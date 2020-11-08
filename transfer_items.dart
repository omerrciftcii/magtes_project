import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setup_1/providers/ChangeLocationProvider.dart';
import "package:setup_1/services/firebase_database.dart";

class TransferItem extends StatelessWidget {
  var barcode_controller = TextEditingController();
  var input_location = TextEditingController();
  var output_location = TextEditingController();
  int index;
  List last_location_list = FirebaseDatabaseService.locationList();
  @override
  Widget build(BuildContext context) {
    var changeLocationProvider = Provider.of<ChangeLocationProvider>(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            DropdownButton(
              value: index,
              items: [
                DropdownMenuItem(
                  child: Text((last_location_list[index])),
                  value: 0,
                  onTap: () {
                    changeLocationProvider.lastLocation = index;
                  },
                ),
                DropdownMenuItem(
                  child: Text((last_location_list[index])),
                  value: 1,
                  onTap: () {
                    index = 1;
                    changeLocationProvider.lastLocation = index;
                  },
                ),
                DropdownMenuItem(
                  child: Text((last_location_list[index])),
                  value: 2,
                  onTap: () {
                    index = 2;
                    changeLocationProvider.lastLocation = index;
                  },
                ),
                DropdownMenuItem(
                  child: Text((last_location_list[index])),
                  value: 3,
                  onTap: () {
                    index = 3;
                    changeLocationProvider.lastLocation = index;
                  },
                ),
              ],
              onChanged: (_) {},
            ),
          ],
        ),
      ),
    );
  }
}
