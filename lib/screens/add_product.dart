import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setup_1/providers/add_product_provider.dart';

import '../models/base_stuff.dart';
import '../models/base_stuff.dart';
import '../services/firebase_database.dart';

class AddProduct extends StatelessWidget {
  var titleController = TextEditingController();
  var collectionNameController = TextEditingController();
  var isBrokenController = TextEditingController();
  var imageUrlController = TextEditingController();
  var idController = TextEditingController();

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
                hintText: 'Id',
              ),
              controller: idController,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'CollectionName',
              ),
              controller: collectionNameController,
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
                hintText: 'Image Url',
              ),
              controller: imageUrlController,
            ),
            FlatButton(
              child: Text('Save to database'),
              onPressed: () {
                BaseStuffModel baseStuffModel = BaseStuffModel(
                    id: idController.text,
                    isBroken: addProductProvider.isBroken,
                    title: titleController.text,
                    imageUrl: imageUrlController.text);

                print(baseStuffModel.id);
                print(baseStuffModel.isBroken);
                print(baseStuffModel.title);
                print(baseStuffModel.imageUrl);

                FirebaseDatabaseService.writeToDb(
                    baseStuff: baseStuffModel,
                    collectionName: collectionNameController.text,
                    id: idController.text,
                    imageUrl: imageUrlController.text,);
              },
            )
          ],
        ),
      ),
    );
  }
}
