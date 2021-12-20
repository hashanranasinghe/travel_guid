import 'package:flutter/material.dart';
import 'package:travel_guid/models/travel_places.dart';
import 'package:travel_guid/widgets/category_travel_item.dart';

class FavoritesScreen extends StatefulWidget {
  final List<TravelPlaces> favoritesTravelPlaces;
  FavoritesScreen(this.favoritesTravelPlaces);




  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  String? favoriteCategoryName;
  List<TravelPlaces>? favoritesTravelPlace;

  // @override
  // void didChangeDependencies() {
  //
  //   final routeArgs =ModalRoute.of(context)!.settings.arguments as Map<String,String>;
  //   final favoriteCategoryId = routeArgs['id'];
  //   favoriteCategoryName = routeArgs['name'];
  //   favoritesTravelPlace = widget.favoritesTravelPlaces.where((favoriteCategoryPlace){
  //     return favoriteCategoryPlace.category.contains(favoriteCategoryId!);
  //   }).toList();
  //   super.didChangeDependencies();
  // }

    void _removeItem(String selectId){
        setState(() {
          favoritesTravelPlace?.removeWhere((TravelPlaces) => TravelPlaces.id == selectId);
        });
    }

  @override
  Widget build(BuildContext context) {
    if(widget.favoritesTravelPlaces.isEmpty){
      return const Center(
        child: Text('You have no Favorites places'),
      );
    }else{
      return ListView.builder(itemBuilder: (ctx,index) {
        return
          CategoryTravelItem(
            name: widget.favoritesTravelPlaces[index].name,
            imageUrl: widget.favoritesTravelPlaces[index].imageUrl,
            complexity: widget.favoritesTravelPlaces[index].complexity,
            id: widget.favoritesTravelPlaces[index].id,
            description: widget.favoritesTravelPlaces[index].description,
            removeItem: _removeItem,

          );
      },itemCount: widget.favoritesTravelPlaces.length);
    }


  }
}
