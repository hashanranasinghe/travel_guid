import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/category_travel_screen.dart';


class CategoryItem extends StatelessWidget {
  final String id;
  final String name;
  final Color color;

  const CategoryItem(this.id,this.name, this.color, {Key? key}) : super(key: key);

  void selectCategory(BuildContext ctx){
      Navigator.of(ctx).pushNamed(CategoryTravelScreen.screenName,arguments: {
        'id': id,
        'name': name
      });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),

      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(name,
        style: Theme.of(context).textTheme.subtitle1,),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.7),
              color],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20)
        ),
      ),
    );
  }
}
