class Location{
  final double lat;
  final double lng;

  Location({this.lat, this.lng});
 // ignore: missing_return
  Location.fromJson(Map <dynamic,dynamic> parsedJson)
  :lat = parsedJson['lat'],
  lng = parsedJson['lng'];

}