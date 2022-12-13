import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Crazy App', style: TextStyle(
            color: Colors.black
          ),
          ),
        centerTitle: true,
        ),
        body: Center(
          child: Text(
            'First Flutter App',
            style: TextStyle(
              fontSize: 28,
              fontStyle: FontStyle.italic,
              color: Colors.black
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.ac_unit),
          onPressed: () {
            print("Floating action button is clicked...");
          },
        ),
      ),
    );
  }
}
