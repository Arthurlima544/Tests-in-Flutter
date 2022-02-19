import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testinflutter/Controllers/Homepage/list_items_controller.dart';

import 'Views/Homepage/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: ChangeNotifierProvider<ListItemsController>(
        create: (context) => ListItemsController(),
        child: const HomePage(),
      ),
      title: "App Colors",
    );
  }
}
