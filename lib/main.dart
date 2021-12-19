import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travel_guid/dummy_data.dart';
import 'package:travel_guid/models/travel_places.dart';
import 'package:travel_guid/screens/category_travel_screen.dart';
import 'package:travel_guid/screens/filters_screen.dart';
import 'package:travel_guid/screens/tabs_screen.dart';
import 'package:travel_guid/screens/travel_details_screen.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(), // Wrap your app
  ),);
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String,bool> _filters = {
    'simple': false,
    'challenging': false,
    'hard':false,
  };
   List<TravelPlaces> _availableTravelPlaces = dummyTravelPlaces;

  void _setFilters(Map<String,bool> filterData){
      setState(() {
        _filters = filterData;
        _availableTravelPlaces = dummyTravelPlaces.where((travel){
          if(_filters['simple']! && (travel.complexity == Complexity.simple)){
            return false;
          }
          else if(_filters['challenging']! && (travel.complexity == Complexity.challenging)){
            return false;
          }
          else if(_filters['hard']! && (travel.complexity == Complexity.hard)){
            return false;
          }
          return true;

        }).toList();
      });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.green,
        accentColor: Colors.blueAccent,
        canvasColor: Colors.blueGrey.shade100,
        fontFamily: 'Raleway',
        textTheme: ThemeData.dark().textTheme.copyWith(
          // bodyText1: const TextStyle(
          //     color: Color.fromRGBO(255, 255, 255, 1.0)
          // ),
          //   bodyText2: const TextStyle(
          //       color: Color.fromRGBO(255, 255, 255, 1.0)
          //   ),
          subtitle1: const TextStyle(
            fontSize: 15,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
            color: Colors.white
          )
        )
      ),
      routes: {
        '/': (ctx) => const TabsScreen(),
        CategoryTravelScreen.screenName: (ctx) => CategoryTravelScreen(_availableTravelPlaces),
        TravelDetailsScreen.travelDetailsScreenName: (ctx) => const TravelDetailsScreen(),
        FiltersScreen.filtersScreenName: (ctx) => FiltersScreen(_filters,_setFilters),
      },
    );
  }
}

