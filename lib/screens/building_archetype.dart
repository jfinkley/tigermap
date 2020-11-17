import 'package:flutter/material.dart';

class BuildingArchetype extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO Swap Title to RichText
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Building Name'),
        ),
      ),
    );
  }
}
