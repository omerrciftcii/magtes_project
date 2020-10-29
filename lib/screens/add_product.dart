import 'package:flutter/material.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({Key key}) : super(key: key);
  var titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Title',
            ),
            controller: ,
          ),
        ],
      ),
    );
  }
}
