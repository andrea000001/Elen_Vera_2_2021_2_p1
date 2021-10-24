import 'package:flutter/material.dart';
import 'package:flutter_elephant/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Elephant information',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        primaryColor: Colors.white,
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 50
            ),
        ),
      ),
      home: HomePage(),
    );
  }
}
