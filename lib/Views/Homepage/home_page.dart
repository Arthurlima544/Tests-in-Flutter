import 'package:flutter/material.dart';
import 'package:testinflutter/Views/Homepage/Components/color_list_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          child: ListView.builder(
              itemCount: 100,
              itemBuilder: (BuildContext context, index) => ColorTile(
                    index: index,
                  )),
        ));
  }
}
