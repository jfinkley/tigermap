import 'package:skegee_map/models/location.dart';
class Geometry{
  final Location location;

  Geometry({this.location});
  Geometry.fromJson(Map<dynamic,dynamic> parsedJson)
  :location = location.fromJson(parsedJson['location']);
}