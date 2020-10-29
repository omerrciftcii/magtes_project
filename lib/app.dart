import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setup_1/providers/add_product_provider.dart';
import 'package:setup_1/screens/home_screen.dart';

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
            ],
            child: MaterialApp(
              home: HomeScreen(),
              title: 'Lets begin',
            ),
          );
  }
}
