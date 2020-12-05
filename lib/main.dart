import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skegee_map/models/building_archetype.dart';
import 'package:skegee_map/screens/building_search.dart';
import "package:skegee_map/screens/home_screen.dart";
import 'package:skegee_map/constants.dart';
import 'package:skegee_map/screens/search.dart';
import 'package:skegee_map/services/geolocator_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final locatorService = GeoLocatorService();

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   initialRoute: BuildingArchetype.id,
    //   routes: {
    //     BuildingArchetype.id: (context) => BuildingArchetype(
    //       title: 'Brimmer',
    //       info: kBrimmerInfo,
    //       lat: 32.427183,
    //       long: -85.702267,
    //     ),
    //     Search.id : (context) => Search(),
    //   },
    // );
    return FutureProvider(
        create: (context) => locatorService.getLocation(),
        child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.orange,
          ),
            debugShowCheckedModeBanner: false,
            initialRoute: Search.id,
            routes: {
              BuildingArchetype.id: (context) =>
                  BuildingArchetype(
                    title: 'Brimmer',
                    info: kBrimmerInfo,
                    lat: 32.427183,
                    long: -85.702267,
                  ),
              Search.id: (context) => Search(),
            }

        ));
  }
}