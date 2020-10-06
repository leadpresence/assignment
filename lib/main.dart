import 'package:flutter/material.dart';
import 'main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment',
      theme: ThemeData(

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(title: 'assignment'),

    );
  }
}

