import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> numbers = List.generate(20, (index) => "Item ${index + 1}");

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Task 3"),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                numbers[index],
                style: TextStyle(fontSize: 20),
              ),
            );
          },
        ),
      ),
    );
  }
}
