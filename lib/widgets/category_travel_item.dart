import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_guid/models/travel_places.dart';
import 'package:travel_guid/screens/travel_details_screen.dart';

class CategoryTravelItem extends StatelessWidget {

  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final Complexity complexity;
  final Function removeItem;


    const CategoryTravelItem({Key? key,
      required this.id,
      required this.name,
      required this.description,
      required this.imageUrl,
      required this.complexity,
      required this.removeItem
    }) : super(key: key);




  String? get complexityText{
      if(complexity == Complexity.simple){
        return "Simple";
      }else if(complexity == Complexity.challenging){
        return "Challenging";
      }
      else if(complexity == Complexity.hard){
        return "Hard";
      }
      return null;
    }

  void selectPlace(BuildContext ctx){
    Navigator.of(ctx).pushNamed(TravelDetailsScreen.travelDetailsScreenName,arguments: {
      'id': id,
      'name': name,
      'description':description,
      'imageUrl':imageUrl
    }).then((result) => removeItem(result));
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectPlace(context),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)),
            elevation: 4,
            margin: const EdgeInsets.all(10),
        child: Column(children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),

                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,),
                ),
              ],
            ),
          Text(name,
            style: const TextStyle(
              fontSize: 15,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            overflow: TextOverflow.fade,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Row(children:  <Widget>[
                  const Icon(Icons.settings),
                  Text(complexityText!,
                  style: const TextStyle(
                    color: Colors.black
                  ),
                  )
                ],
                )
              ],
            ),
          ),
        ],
        ),
      ),
    );
  }
}
