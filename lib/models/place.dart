import 'package:skegee_map/models/location.dart';
import 'package:skegee_map/models/geometry.dart';

class Place{
  final String name;
  final String vicinity;
  final Geometry geometry;

  Place({this.name, this.vicinity, this.geometry});
  Place.fromJson(Map <dynamic,dynamic> parsedJson)
  :name = parsedJson['name'],
  vicinity = parsedJson['vicinity'],
  geometry = Geometry.fromJson(parsedJson['geometry']);
}