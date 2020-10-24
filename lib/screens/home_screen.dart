import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skegee_map/screens/search.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE3B821),
      body: Search(),
      // body: Column(
      //   children: [
      //     Search(),
      //     SizedBox.expand(
      //       child: DraggableScrollableSheet(
      //         initialChildSize: 0.4,
      //         maxChildSize: 0.6,
      //         minChildSize: 0.2,
      //         builder: (BuildContext context, ScrollController scrollController) {
      //           return Container(
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(20),
      //                 color: Colors.blue[100],
      //               ),
      //               child: Scaffold(
      //                   appBar: AppBar(
      //                 backgroundColor: Colors.red,
      //                 title: Center(
      //                   child: Text('Navigate Tuskegee'),
      //                 ),
      //                 leading: Icon(Icons.push_pin_rounded),
      //                 actions: [
      //                   IconButton(
      //                       icon: Icon(Icons.search_outlined), onPressed: () {
      //                         showSearch(context: context, delegate: BuildingSearch());
      //                   })
      //                 ],
      //               )
      //                   // TextField(
      //                   //   enableSuggestions: true,
      //                   //   autofillHints: ['Rockefeller', 'LTRIMM'],
      //                   //   decoration:InputDecoration(
      //                   //     border: OutlineInputBorder(),
      //                   //     labelText:'Search Campus',
      //                   //     suffixIcon: Icon(
      //                   //       Icons.search
      //                   //     )
      //                   //   ),
      //                   // ),
      //                   )
      //               //ListView.builder(
      //               //   controller: scrollController,
      //               //   itemCount: 25,
      //               //   itemBuilder: (BuildContext context, int index) {
      //               //     return ListTile(title: Text('Item $index'));
      //               //   },
      //               // ),
      //               );
      //         },
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}

class BuildingSearch extends SearchDelegate{
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(icon: Icon(Icons.clear),
          onPressed: (){
          query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      // TODO Add Ios Platform Switcher
      icon: Icon(Icons.arrow_back),
      onPressed: (){

      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Container();
  }

}