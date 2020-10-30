import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skegee_map/screens/building_search.dart';
import 'package:skegee_map/screens/search.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE3B821),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width,
              child: Search()),
          Container(
            height: 2 * MediaQuery.of(context).size.height/3,
            width: MediaQuery.of(context).size.width,
            child: SizedBox.expand(
              child: DraggableScrollableSheet(
                initialChildSize: 0.6,
                maxChildSize: 0.7,
                minChildSize: 0.2,
                builder: (BuildContext context, ScrollController scrollController) {
                  return Container(
                    child: Scaffold(
                      appBar: AppBar(
                        backgroundColor: Colors.red,
                        title: Center(
                          child: Text("Navigate Tuskegee"),
                        ),
                        leading: Icon(Icons.push_pin_rounded),
                        actions: [
                          IconButton(icon: Icon(Icons.search_sharp),
                              onPressed: (){
                            showSearch(context: context, delegate: BuildingSearch());
                              })
                        ],
                      ) ,
                    )
                  );
                },
              ),
            ),
          )
        ],
      ),

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

