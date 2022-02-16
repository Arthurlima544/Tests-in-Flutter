import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          child: ListView.builder(
              itemCount: 100,
              itemBuilder: (BuildContext context, index) => ColorListTile(
                    index: index,
                  )),
        ));
  }
}

class ColorListTile extends StatelessWidget {
  final int index;
  const ColorListTile({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("$index"),
    );
  }
}
