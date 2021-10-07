import 'package:flutter/material.dart';
import 'package:mybank_ui/screens/base_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fidelity Bank',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "poppins",
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,elevation: 0
        ),
        primarySwatch: Colors.blue,
      ),
      home:base_screen() ,
    );
  }
}

