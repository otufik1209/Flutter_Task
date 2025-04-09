import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
        child: Text(
          "Hello world!",
          style: TextStyle(
              fontSize: 50,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: Colors.blue[600]),
        ),
      )),
    );
  }
}
