import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setup_1/models/electronic_tool.dart';
import 'package:setup_1/providers/add_product_provider.dart';
import 'package:setup_1/services/firebase_database.dart';

class AddProduct extends StatelessWidget {
  var titleController = TextEditingController();
  var locationController = TextEditingController();
  var isBrokenController = TextEditingController();
  var barcodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var addProductProvider = Provider.of<AddProductProvider>(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Title',
              ),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Location',
              ),
              controller: locationController,
            ),
            DropdownButton(
              value: addProductProvider.isBroken,
              items: [
                DropdownMenuItem(
                  child: Text('true'),
                  value: true,
                  onTap: () {
                    addProductProvider.isBroken = true;
                  },
                ),
                DropdownMenuItem(
                  child: Text('false'),
                  value: false,
                  onTap: () {
                    addProductProvider.isBroken = false;
                  },
                ),
              ],
              onChanged: (_) {},
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Barcode',
              ),
              controller: barcodeController,
            ),
            FlatButton(
              child: Text('Save to database'),
              onPressed: () {
                ElectronicToolModel electronicToolModel = ElectronicToolModel(
                  location: locationController.text,
                  isBroken: addProductProvider.isBroken,
                  title: titleController.text,
                  id: DateTime.now().millisecondsSinceEpoch.toString(),
                  barcode: barcodeController.text,
                  // count: 0,
                );
                FirebaseDatabaseService.writeToDb(
                    electronicToolModel: electronicToolModel);
              },
            )
          ],
        ),
      ),
    );
  }
}
