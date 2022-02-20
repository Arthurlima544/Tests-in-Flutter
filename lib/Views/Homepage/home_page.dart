import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testinflutter/Controllers/Homepage/list_items_controller.dart';
import 'package:testinflutter/Views/Homepage/Components/color_tile.dart';
import 'package:testinflutter/utils/theme/text_styles.dart';
import 'package:testinflutter/utils/theme/text_styles_tags.dart';

import 'Components/loading_color_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "App Colors",
          style: TextStyles.getTextStyle(TextStylesTags.titleNormal),
        ),
      ),
      body: Selector<ListItemsController, int?>(
        selector: (context, controller) => controller.pagesLenght,
        builder: (context, itemCount, child) {
          return ListView.builder(
            itemBuilder: (context, index) {
              var pagesProvider = Provider.of<ListItemsController>(context);

              // Catalog provides a single synchronous method for getting
              // the current data.
              var item = pagesProvider.getByIndex(index);

              if (item.isLoading) {
                return const LoadingColorTile();
              }

              return ColorTile(item: item);
            },
          );
        },
      ),
    );
  }
}
