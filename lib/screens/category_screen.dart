import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_guid/widgets/category_item.dart';
import 'package:travel_guid/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: const EdgeInsets.all(10),
        children: dummyCategories.map((catData) => CategoryItem(
            catData.id,
            catData.name,
            catData.color)).toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          mainAxisExtent: 130,)),);
  }
}
