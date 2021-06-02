import 'package:flutter/material.dart';
import 'package:skegee_map/constants.dart';

class BuildingSearch extends SearchDelegate {
  static String id = 'BuildingSearch';

  get building => kBuildings;

  // clear search
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      // TODO Add Ios Platform Switcher
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    print('The query is $query');
    return Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Text(
                  //'Brimmmer',
                  query,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Image(
                  image: AssetImage(kBrimmerImage),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  kBrimmerInfo,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),
                ),
                Container(
                  child: Center(
                    child: Card(
                      child: IconButton(
                        icon: Icon(Icons.directions),
                        onPressed: () {
                          launchURL(kBrimmer_url);
                        }
                      ),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                )

              ],
            ),
          ),
        ),
        // Card(
        //   // TODO have query be the key to a map that has a Linked List that has the coordinates,
        //
        //   color: Colors.red,
        //   shape: StadiumBorder(),
        //   child: Container(
        //     height: 100,
        //     width: 100,
        //     child: Card(
        //       color: Colors.red,
        //       child: Center(
        //         child: Text(query.toLowerCase()),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    //return Container();
    // TOOO add autocomplete or autofill so the query is completed
    final suggestionList = query.isEmpty
        ? kRecentBuildings
        : kBuildings.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
          //query = kBuildings.where((p) => p.startsWith(query)) as String;
          query = suggestionList[0];
          // print(query);
        },
        leading: Icon(Icons.location_city),
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].substring(0, query.length),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: suggestionList[index].substring(query.length),
                    style: TextStyle(color: Colors.grey))
              ]),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}
