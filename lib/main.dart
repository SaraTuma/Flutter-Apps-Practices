import 'package:flutter/material.dart';
import 'package:roll_rice_app/app_controller.dart';
import 'package:roll_rice_app/home_page.dart';
import 'package:roll_rice_app/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                primarySwatch: Colors.red,
                brightness: AppController.instance.isDarkTheme
                    ? Brightness.light
                    : Brightness.dark),
            //home: const MyHomePage(title: 'Flutter Sara TESTEEEEEEE'),
            home: const LoginPage(),
          );
        });
  }
}
