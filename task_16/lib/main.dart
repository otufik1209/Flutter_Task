import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated Container',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _containerWidth = 200.0;
  double _containerHeight = 200.0;
  Color _containerColor = Colors.blue;
  BorderRadius _containerBorderRadius = BorderRadius.circular(20);

  void _changeContainerProperties() {
    setState(() {
      if (_containerWidth == 200.0) {
        _containerWidth = 300.0;
        _containerHeight = 300.0;
        _containerColor = Colors.red;
        _containerBorderRadius = BorderRadius.circular(50); 
      } else {
        _containerWidth = 200.0;
        _containerHeight = 200.0;
        _containerColor = Colors.blue;
        _containerBorderRadius = BorderRadius.circular(20);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
        backgroundColor: Colors.lightBlueAccent,
        elevation: 4.0, 
      ),
      body: Center( 
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AnimatedContainer(
                width: _containerWidth,
                height: _containerHeight,
                decoration: BoxDecoration(
                  color: _containerColor,
                  borderRadius: _containerBorderRadius,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), 
                      spreadRadius: 2, 
                      blurRadius: 10, 
                      offset: Offset(4, 4), 
                    ),
                  ],
                ),
                duration: Duration(seconds: 1), 
                curve: Curves.easeInOut, 
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: _changeContainerProperties,
                child: Text('Change Container'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
