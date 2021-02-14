import 'dart:js';

import 'package:flutter/material.dart';
import 'package:kpss/models/test_question_models.dart';
import 'package:provider/provider.dart';

class AddedQuestion extends StatefulWidget {
  @override
  _AddedQuestionState createState() => _AddedQuestionState();
}

class _AddedQuestionState extends State<AddedQuestion> {
  TextEditingController _controller,
      _controllerA,
      _controllerB,
      _controllerC,
      _controllerD,
      _controllerAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Soru Ekleme"),
        elevation: 4,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 50,
                child: Row(
                  children: [
                    Text("Konu:  "),

                    // seçilebilir konu başlıkları eklenecek..
                  ],
                ),
              ),
              Row(
                children: [
                  Text("Soru:   "),
                  Container(
                    child: TextFormField(controller: _controller),
                    width: MediaQuery.of(context).size.width - 100,
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text("Cevap'lar"),
                    TextFormField(
                      controller: _controllerA,
                    ),
                    TextFormField(
                      controller: _controllerB,
                    ),
                    TextFormField(
                      controller: _controllerC,
                    ),
                    TextFormField(
                      controller: _controllerD,
                    ),
                    Text("Doğru cevap"),
                    TextFormField(
                      controller: _controllerAnswer,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    RaisedButton(
                      onPressed: () {
                        checkList(_controller, _controllerA, _controllerB,
                            _controllerC, _controllerD, _controllerAnswer);
                      },
                      child: Icon(Icons.cloud_upload),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List checkList(
    TextEditingController controllerQuestion,
    TextEditingController controllerA,
    TextEditingController controllerB,
    TextEditingController controllerC,
    TextEditingController controllerD,
    TextEditingController controllerAnswer) {
  List<String> testModel = [];
  testModel.add(controllerQuestion.text.toString());
  testModel.add(controllerA.text.toString());
  testModel.add(controllerB.text.toString());
  testModel.add(controllerC.text.toString());
  testModel.add(controllerD.text.toString());
  testModel.add(controllerAnswer.text.toString());
}
