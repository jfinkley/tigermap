import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';
import 'package:skegee_map/models/building_archetype.dart';
import 'package:skegee_map/models/place.dart';
import 'package:skegee_map/screens/building_search.dart';
import "package:skegee_map/screens/home_screen.dart";
import 'package:skegee_map/constants.dart';
import 'package:skegee_map/screens/search.dart';
import 'package:skegee_map/services/geolocator_service.dart';
import 'package:skegee_map/services/places_service.dart';
import 'dart:io'; // Server side / command line only package.

void main() {
  runApp(MyApp());
    // Map<String, String> env = Platform.environment;
  //  env.forEach((k, v) => print("Key=$k Value=$v"));
  // Map<String, String> envVars = Platform.environment;
 // var newMap = buildingMap();
  //newMap.forEach((k, v) => print("Key =$k Value=$v"));
  // print(envVars['PATH']);

}

Map buildingMap (){
  Map<String,String> fruit = new Map();
  return fruit;
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
              secondaryHeaderColor: Colors.redAccent,
            ),
            debugShowCheckedModeBanner: false,
            initialRoute: Search.id,
            routes: {
              BuildingArchetype.id: (context) => BuildingArchetype(
                title: 'Brimmer',
                info: kBrimmerInfo,
                lat: 32.427183,
                long: -85.702267,
              ),
              Search.id: (context) => Search(),
            }));
    //   MultiProvider(providers: [
    //   FutureProvider(
    //       create: (context) => locatorService.getLocation(),
    //       child: MaterialApp(
    //           theme: ThemeData(
    //             primarySwatch: Colors.orange,
    //             secondaryHeaderColor: Colors.redAccent,
    //           ),
    //           debugShowCheckedModeBanner: false,
    //           initialRoute: Search.id,
    //           routes: {
    //             BuildingArchetype.id: (context) => BuildingArchetype(
    //                   title: 'Brimmer',
    //                   info: kBrimmerInfo,
    //                   lat: 32.427183,
    //                   long: -85.702267,
    //                 ),
    //             Search.id: (context) => Search(),
    //           })),
    // ]);
  }
}
/*
ProxyProvider<Position,Future<List<Place>>>(update: (context,position,places){
         return (position!=null) ? PlacesService().getPlace();
    }//TODO finish
      )*/
