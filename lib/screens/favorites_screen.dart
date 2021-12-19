import 'package:flutter/material.dart';
import 'package:travel_guid/models/travel_places.dart';
import 'package:travel_guid/widgets/category_travel_item.dart';

class FavoritesScreen extends StatelessWidget {
    final List<TravelPlaces> favoritesTravelPlaces;


    FavoritesScreen(this.favoritesTravelPlaces);

  @override
  Widget build(BuildContext context) {
    if(favoritesTravelPlaces.isEmpty){
        return const Center(
          child: Text('You have no Favorites places'),
        );
    }else{
        return ListView.builder(itemBuilder: (ctx,index) {
          return
            CategoryTravelItem(
              name: favoritesTravelPlaces[index].name,
              imageUrl: favoritesTravelPlaces[index].imageUrl,
              complexity: favoritesTravelPlaces[index].complexity,
              id: favoritesTravelPlaces[index].id,
              description: favoritesTravelPlaces[index].description,
              // removeItem: _removeItem,
              );
        },itemCount: favoritesTravelPlaces.length);
    }

  }
}
