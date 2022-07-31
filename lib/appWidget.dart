import 'package:flutter/material.dart';
import 'package:sare/appController.dart';
import 'package:sare/homePage.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.cyan,
              brightness: AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light,
            ),
            home: HomePage(),
          );
        }
    );
  }
}
