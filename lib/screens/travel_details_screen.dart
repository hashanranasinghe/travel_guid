import 'package:flutter/material.dart';
import 'package:travel_guid/dummy_data.dart';

class TravelDetailsScreen extends StatelessWidget {


  static const travelDetailsScreenName = '/travel-details';
  final Function toggleFavorite;
  final Function isFavorite;


  TravelDetailsScreen(this.isFavorite,this.toggleFavorite);

  Widget BuildImageSection(String text){
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Image.network(
        text,
        fit: BoxFit.cover,
      ),
    );
  }
  Widget BuildDescriptionSection(String text){
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[

          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),

            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                text,
                textAlign: TextAlign.justify,

                style: const TextStyle(
                  height: 1.2,
                  letterSpacing: 0.8,
                  wordSpacing: 1.0,
                  color: Colors.black,
                ),),
            ),
          ),
        ],
      ),);
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =ModalRoute.of(context)!.settings.arguments as Map<String,String>;
    final selectId = routeArgs['id'];
    final selectName = routeArgs['name'];
    final selectDescription = routeArgs['description'];
    final selectImage = routeArgs['imageUrl'];
    final selectTravel = dummyTravelPlaces.firstWhere((select) => select.id == selectId);


    return Scaffold(
      appBar: AppBar(
        title: Text(selectName!),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            BuildImageSection(selectTravel.imageUrl),
            BuildDescriptionSection(selectDescription!),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(isFavorite(selectId) ? Icons.star : Icons.star_border
        ),
        onPressed: () => toggleFavorite(selectId),
        //     (){
        //   Navigator.of(context).pop(selectId);
        // },

        backgroundColor: Colors.green,
      ),
    );
  }

}
