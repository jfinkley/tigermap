import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:skegee_map/screens/building_archetype.dart';
import 'package:skegee_map/screens/building_search.dart';

class Search extends StatefulWidget {
  static String id = 'search_screen';
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 31, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.list_sharp),
              title: Text('Home')
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search),
          title: Text('Search'))
        ],

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



//   @override
//   Search createState() => Search();
// }
// child: Row(
// mainAxisSize: MainAxisSize.max,
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// IconButton(
// icon: Icon(Icons.search_outlined),
// onPressed: () {
// // Navigator.pushNamed(context, )
// })
// ],
// ),