import 'package:flutter/material.dart';

class TestSorulari extends StatefulWidget {
  @override
  _TestSorulariState createState() => _TestSorulariState();
}

class _TestSorulariState extends State<TestSorulari> {
  String verilenCevap;
  @override
  Widget build(BuildContext context) {
    String _soru =
        " Sorular soranların sorulanlara üstünlük kurma çabasına dönüşebilecek eserlerdir.";
    String _cevapA = "A cevabı";
    String _cevapB = "Bcevabı";
    String _cevapC = "Ccevabı";
    String _cevapD = "Dcevabı";
    String _cevapE = "Ecevabı";

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_ios),
      ),
      backgroundColor: Theme.of(context).accentColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    _soru,
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.all(10),
                ),
                RadioListTile(
                  title: Text(_cevapA),
                  value: _cevapA,
                  groupValue: _soru,
                  onChanged: (value) {
                    setState(() {
                      verilenCevap = value;
                    });
                  },
                  selected: selectedMi(_cevapA),
                  activeColor: Colors.white,
                ),
                RadioListTile(
                  title: Text(_cevapB),
                  value: _cevapB,
                  groupValue: _soru,
                  onChanged: (value) {
                    setState(() {
                      verilenCevap = value;
                    });
                  },
                  selected: selectedMi(_cevapB),
                  activeColor: Colors.white,
                ),
                RadioListTile(
                  title: Text(_cevapC),
                  value: _cevapC,
                  groupValue: _soru,
                  onChanged: (value) {
                    setState(() {
                      verilenCevap = value;
                    });
                  },
                  selected: selectedMi(_cevapC),
                  activeColor: Colors.white,
                ),
                RadioListTile(
                  title: Text(_cevapD),
                  value: _cevapD,
                  groupValue: _soru,
                  onChanged: (value) {
                    setState(() {
                      verilenCevap = value;
                    });
                  },
                  selected: selectedMi(_cevapD),
                  activeColor: Colors.white,
                ),
                RadioListTile(
                  title: Text(_cevapE),
                  value: _cevapE,
                  groupValue: _soru,
                  onChanged: (value) {
                    setState(() {
                      verilenCevap = value;
                    });
                  },
                  selected: selectedMi(_cevapE),
                  activeColor: Colors.white,
                ),
              ],
            ),
          ),
          Text("Reklam Alanı"),
        ],
      ),
    );
  }

  selectedMi(String value) {
    if (verilenCevap == value) {
      return true;
    } else
      return false;
  }
}
