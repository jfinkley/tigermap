// import 'dart:html';

import 'package:geolocator/geolocator.dart';
class GeoLocatorService{
  Future<Position> getLocation() async{
    print('get Location called');
    var geolocator = Geolocator();
    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }
}