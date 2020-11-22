import 'package:flutter/material.dart';
import 'package:skegee_map/screens/building_archetype.dart';
import "package:skegee_map/screens/home_screen.dart";
import 'package:skegee_map/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // TODO figure out how to use named routes
      home: BuildingArchetype(
        title: 'Brimmer',
        info: kBrimmerInfo,
        lat: 32.427183,
        long: -85.702267,
      )//HomeScreen(),
    );
  }
}
