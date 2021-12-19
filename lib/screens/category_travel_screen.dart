import 'package:flutter/material.dart';
import 'package:travel_guid/dummy_data.dart';
import 'package:travel_guid/models/travel_places.dart';
import 'package:travel_guid/widgets/category_travel_item.dart';

class CategoryTravelScreen extends StatefulWidget {

  static const screenName = '/category-travels';
  List<TravelPlaces> availablePlaces;
  CategoryTravelScreen(this.availablePlaces);

  @override
  State<CategoryTravelScreen> createState() => _CategoryTravelScreenState();
}

class _CategoryTravelScreenState extends State<CategoryTravelScreen> {
  String? categoryName;
  List<TravelPlaces>? displayedTravelPlaces;




  @override
  void didChangeDependencies() {
    final routeArgs =ModalRoute.of(context)!.settings.arguments as Map<String,String>;
    final categoryId = routeArgs['id'];
    categoryName = routeArgs['name'];

    displayedTravelPlaces = widget.availablePlaces.where((categoryPlace){
      return categoryPlace.category.contains(categoryId!);
    }).toList();
    super.didChangeDependencies();
  }
  void _removeItem(String selectId){
      setState(() {
          displayedTravelPlaces?.removeWhere((TravelPlaces) => TravelPlaces.id == selectId);
      });
  }
  @override
  Widget build(BuildContext context) {




    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName!),
      ),
      body: ListView.builder(itemBuilder: (ctx,index) {
        return
          CategoryTravelItem(
            name: displayedTravelPlaces![index].name,
            imageUrl: displayedTravelPlaces![index].imageUrl,
            complexity: displayedTravelPlaces![index].complexity,
            id: displayedTravelPlaces![index].id,
            description: displayedTravelPlaces![index].description,
            // removeItem: _removeItem,
          );
      },itemCount: displayedTravelPlaces?.length)
    );
  }
}
