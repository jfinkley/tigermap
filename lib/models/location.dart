class Location{
  final double lat;
  final double long;

  Location({this.lat, this.long});
  Location.fromJson(Map <dynamic,dynamic> parsedJson, this.long)
  :lat = parsedJson['lat'],
  lng = parsedJson['lng'];

}