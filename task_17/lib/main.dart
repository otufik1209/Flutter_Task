import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  void _toggleDarkMode(bool value) {
    setState(() {
      _isDarkMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Settings Screen',
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(), 
      home: SettingsScreen(toggleDarkMode: _toggleDarkMode, isDarkMode: _isDarkMode),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  final Function(bool) toggleDarkMode;
  final bool isDarkMode;

  SettingsScreen({required this.toggleDarkMode, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.blue,
      ),
      body: Center( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: <Widget>[
            Text(
              'Dark Mode',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 20),
            Switch(
              value: isDarkMode, 
              onChanged: toggleDarkMode, 
              activeColor: Colors.blue, 
            ),
            SizedBox(height: 30),
            Text(
              isDarkMode ? 'Dark mode is ON' : 'Dark mode is OFF',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
