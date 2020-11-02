import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setup_1/providers/bottom_navigation_bar_proovider.dart';
import 'package:setup_1/screens/home_screen.dart';
import 'package:setup_1/screens/movements_screen.dart';
import 'package:setup_1/screens/profile_screen.dart';

class BottomNavigationBarController extends StatelessWidget {

  final List<Widget> pages = [
    HomeScreen(),
    MovementScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    var bottomNavigationBarProvider =
        Provider.of<BottomNavigationProvider>(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomNavigationBarProvider.currentIndex,
        selectedItemColor: Colors.orange,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Anasayfa'),
          BottomNavigationBarItem(
              icon: Icon(Icons.move_to_inbox_outlined), label: 'Hareketler'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
        onTap: (int index) {
          bottomNavigationBarProvider.currentIndex = index;
        },
      ),
      body: pages[bottomNavigationBarProvider.currentIndex],
    );
  }
}
