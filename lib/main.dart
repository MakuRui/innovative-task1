import "package:flutter/material.dart";
import 'package:innovative_task1/pages/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Group 4 Innovative Task #1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          primaryColor: Colors.white,
          textTheme: const TextTheme(
              bodyText2: TextStyle(color: Colors.white)
          )
      ),
      home: const HomePage(),
    );
  }
}