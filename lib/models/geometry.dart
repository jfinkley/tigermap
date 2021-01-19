import 'package:skegee_map/models/location.dart';
class Geometry{
  final Location location;

  Geometry({this.location});
  // Error: Can't access 'this' in a field initializer to read 'location'.
  //     :location = location.fromJson(parsedJson['location']);
  // ^^^^^^^^
  // Failed to compile application.
  // Geometry.fromJson(Map<dynamic,dynamic> parsedJson)
  // :location = location.fromJson(parsedJson['location']);
}