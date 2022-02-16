import 'package:flutter/material.dart';
import 'package:testinflutter/Views/Homepage/Components/color_tile.dart';
import 'package:testinflutter/utils/theme/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "App Colors",
            style: TextStyles.titleHome,
          ),
        ),
        body: ListView.builder(
            itemCount: 100,
            itemBuilder: (BuildContext context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 10),
                  child: ColorTile(
                    index: index,
                  ),
                )));
  }
}
