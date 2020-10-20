import 'package:flutter/material.dart';
import "package:tigermap/screens/home_screen.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // TODO figure out how to use named routes
      home: HomeScreen(),
    );
  }
}
