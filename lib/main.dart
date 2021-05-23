import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram UI',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
