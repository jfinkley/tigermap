import 'package:flutter/material.dart';
import 'package:skegee_map/screens/building_archetype.dart';
import 'package:skegee_map/screens/building_search.dart';
import "package:skegee_map/screens/home_screen.dart";
import 'package:skegee_map/constants.dart';
import 'package:skegee_map/screens/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Search.id,
      routes: {
        BuildingArchetype.id: (context) => BuildingArchetype(
          title: 'Brimmer',
          info: kBrimmerInfo,
          lat: 32.427183,
          long: -85.702267,
        ),
        Search.id : (context) => Search(),
      },
      // home: BuildingArchetype(
      //   title: 'Brimmer',
      //   info: kBrimmerInfo,
      //   lat: 32.427183,
      //   long: -85.702267,
      // )//HomeScreen(),
    );
  }
}
