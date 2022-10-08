import 'package:flutter/material.dart';

import 'pages/loginPage.dart';
import 'pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: loginPage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primaryColor: Colors.grey),
      routes: {
        "/":(context) => loginPage(),
        "/home":(context) => homePage(),
      },
    );
  }
}
