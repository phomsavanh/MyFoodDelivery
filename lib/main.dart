import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/MyNav.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'food delivery',
      debugShowCheckedModeBanner: false,
      home: Nav(),
    );
  }
}
