import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget BuildListTile(String text,IconData icon){
    return ListTile(
      leading: Icon(icon,size: 26),
      title: Text(
        text,
        style: const TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24,
            fontWeight: FontWeight.bold
        ),
      ),
      onTap: (){

      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,

            child: Text(
              'Travel',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,


              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          BuildListTile('Travel Places', Icons.restaurant),
          BuildListTile("Filters", Icons.settings),
        ],
      ),
    );
  }
}
