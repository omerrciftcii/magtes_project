import 'package:flutter/material.dart';
import 'package:kpss/screens/added_question.dart';
import 'test_sorulari.dart';

class MainBody extends StatefulWidget {
  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            InkWell(
              splashColor: Colors.amber,
              onTap: () {},
              child: DrawerHeader(
                  padding: EdgeInsets.all(5),
                  curve: Curves.fastOutSlowIn,
                  child: UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      minRadius: 56,
                      child: Image.network(
                          "https://icon-library.com/images/avatar-png-icon/avatar-png-icon-3.jpg"),
                    ),
                    accountName: Text("Furkan Kuran"),
                    accountEmail: Text("furkan.kuran37@gmail.com"),
                    arrowColor: Colors.teal.shade400,
                  )),
            ),
            //page route yerine profil bilgileri kullanılacak...
            Expanded(
              child: ListView(
                children: [
                  InkWell(
                    splashColor: Colors.teal.shade800,
                    onTap: () {},
                    child: ListTile(
                      title: Text(" ANA SAYFA "),
                      leading: Icon(Icons.home_outlined),
                      trailing: Icon(Icons.arrow_right_outlined),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Kpss Hazırlık",
        ),
        centerTitle: true,
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            Card(
              child: FloatingActionButton(
                heroTag: 1,
                onPressed: () {
                  debugPrint("testSoruları");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TestSorulari(),
                    ),
                  );
                },
                child: Text("Test Sorular"),
                backgroundColor: Colors.deepPurpleAccent,
              ),
            ),
            Card(
              child: FloatingActionButton(
                heroTag: 2,
                onPressed: () {
                  debugPrint("AddedQuestion");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddedQuestion(),
                    ),
                  );
                },
                child: Text("AddedQuestion "),
                backgroundColor: Colors.deepPurpleAccent,
              ),
            ),
            Card(
              child: FloatingActionButton(
                heroTag: 3,
                onPressed: () {},
                child: Text("Sanş Sorular"),
                backgroundColor: Colors.deepPurpleAccent,
              ),
            ),
            Card(
              child: FloatingActionButton(
                heroTag: 4,
                onPressed: () {},
                child: Text("Sorular"),
                backgroundColor: Colors.deepPurpleAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
