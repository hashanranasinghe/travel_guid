import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travel_guid/screens/category_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:travel_guid/screens/category_travel_screen.dart';
import 'package:travel_guid/screens/travel_details_screen.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(), // Wrap your app
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
        '/': (ctx) => const CategoriesScreen(),
        CategoryTravelScreen.screenName: (ctx) => const CategoryTravelScreen(),
        TravelDetailsScreen.travelDetailsScreenName: (ctx) => const TravelDetailsScreen(),
      },
    );
  }
}

