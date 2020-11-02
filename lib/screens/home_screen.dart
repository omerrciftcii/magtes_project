import 'package:flutter/material.dart';
import 'package:setup_1/models/electronic_tool.dart';
import 'package:setup_1/services/firebase_database.dart';

import 'add_product.dart';

class HomeScreen extends StatelessWidget {
//! Categori ekleyecek(Title, Miktar(Adet), ResimUrl,)
//! Ürün eklenecek(id,barcode,konum)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => AddProduct(),
              ),
            );
          },
          child: Text('Go to add product page'),
        ),
      ],
      appBar: AppBar(),
      body: FutureBuilder<ElectronicToolModel>(
        future: FirebaseDatabaseService.  readFromDb(),
        builder: (context, snapshot) {
          return Container();
        },
      ),
    );
  }
}
