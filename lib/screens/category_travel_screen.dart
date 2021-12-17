import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_guid/dummy_data.dart';
import 'package:travel_guid/widgets/category_travel_item.dart';

class CategoryTravelScreen extends StatelessWidget {
  const CategoryTravelScreen({Key? key}) : super(key: key);

  static const screenName = '/category-travels';

  @override
  Widget build(BuildContext context) {
    
    final routeArgs =ModalRoute.of(context)!.settings.arguments as Map<String,String>;
    final categoryId = routeArgs['id'];
    final categoryName = routeArgs['name'];

    final categoryTravel = dummyTravelPlaces.where((categoryPlace){
      return categoryPlace.category.contains(categoryId!);
    }).toList();


    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName!),
      ),
      body: ListView.builder(itemBuilder: (ctx,index) {
        return CategoryTravelItem(name: categoryTravel[index].name, imageUrl: categoryTravel[index].imageUrl, complexity: categoryTravel[index].complexity, id: categoryTravel[index].id, description: categoryTravel[index].description,);
      },itemCount: categoryTravel.length)
    );
  }
}
