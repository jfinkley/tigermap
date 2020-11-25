import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:skegee_map/screens/building_archetype.dart';

class Search extends StatelessWidget {
  static String id = 'search_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                icon: Icon(Icons.search_outlined),
                onPressed: () {
                  print('hold');
                })
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            child: GoogleMap(
              mapType: MapType.hybrid,
              initialCameraPosition: CameraPosition(
                  target: LatLng(32.427183, -85.702267), zoom: 16),
            ),
          )
        ],
      ),
    );
  }
}
