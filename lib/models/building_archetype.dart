import 'package:flutter/material.dart';
import 'package:skegee_map/constants.dart';

class BuildingArchetype extends StatelessWidget {
  static String id = 'building_archetype';
  String buildingTitle;
  String buildingInfo;
  double buildingLat;
  double buildingLong;

 // BuildingArchetype(this.buildingTitle, this.buildingInfo, this.lat, this.long);
  BuildingArchetype({@required String title, @required String info,
    @required double lat, @required double long}){
    this.buildingTitle = title;
    this.buildingInfo = info;
    this.buildingLat = lat;
    this.buildingLong = long;
  }

  @override
  Widget build(BuildContext context) {
    //TODO Swap Title to RichText
    return Scaffold(
      appBar: AppBar(
        title: Center(
          // TODO add a serif font in the pubspec
          child: Text(buildingTitle),
        ),
        backgroundColor: kMainYellow,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(buildingInfo,
                style: TextStyle(
                  fontSize: 20,
                ),),
              ),
            ),
          ),
          Center(
            child: FlatButton(
              onPressed: (){
                print('Pressed');
              },
              child: (Text(
                'Navigate',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              )),
              color: kMainYellow,
            ),
          )
        ],
      ),
    );
  }
}
