import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE3B821),
      body: SizedBox.expand(
        child: DraggableScrollableSheet(
          initialChildSize: 0.5,
          maxChildSize: 0.8,
          minChildSize: 0.2,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue[100],
                ),
                child: Scaffold(
                    appBar: AppBar(
                  backgroundColor: Colors.red,
                  title: Center(
                    child: Text('Navigate Tuskegee'),
                  ),
                  leading: Icon(Icons.push_pin_rounded),
                  actions: [
                    IconButton(
                        icon: Icon(Icons.search_outlined), onPressed: () {})
                  ],
                )
                    // TextField(
                    //   enableSuggestions: true,
                    //   autofillHints: ['Rockefeller', 'LTRIMM'],
                    //   decoration:InputDecoration(
                    //     border: OutlineInputBorder(),
                    //     labelText:'Search Campus',
                    //     suffixIcon: Icon(
                    //       Icons.search
                    //     )
                    //   ),
                    // ),
                    )
                //ListView.builder(
                //   controller: scrollController,
                //   itemCount: 25,
                //   itemBuilder: (BuildContext context, int index) {
                //     return ListTile(title: Text('Item $index'));
                //   },
                // ),
                );
          },
        ),
      ),
    );
  }
}
