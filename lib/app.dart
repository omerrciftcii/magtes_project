import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setup_1/providers/add_product_provider.dart';
import 'package:setup_1/providers/bottom_navigation_bar_proovider.dart';
import 'package:setup_1/widgets/bottom_navigation_bar_widget.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoApp()
        : MultiProvider(
            providers: [
              ChangeNotifierProvider(
                create: (_) => AddProductProvider(),
              ),
                ChangeNotifierProvider(
                create: (_) => BottomNavigationProvider(),
              ),
            ],
            child: MaterialApp(
              home: BottomNavigationBarController(),
              title: 'Lets begin',
            ),
          );
  }
}
