import 'package:flutter/material.dart';
import 'package:travel_guid/screens/category_screen.dart';
import 'package:travel_guid/screens/favorites_screen.dart';
import 'package:travel_guid/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

// class _TabsScreenState extends State<TabsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Center(
//               child: Text('Travel')),
//           bottom: const TabBar(tabs: <Widget>[
//             Tab(
//               icon: Icon(Icons.category),
//               text: 'categories',),
//             Tab(
//               icon: Icon(Icons.star),
//               text: 'Favorites',
//             ),
//           ],
//           ),
//         ),
//         body: const TabBarView(
//           children: <Widget>[
//             CategoriesScreen(),
//             FavoritesScreen(),
//           ],
//         ),
//       ),
//     );
//   }
// }

class _TabsScreenState extends State<TabsScreen> {

  final List<Map<String,dynamic>> _pages = [
    {
      'page': const CategoriesScreen(),'title': 'Categories'
    },
    {
      'page': const FavoritesScreen(),'title': 'Favorites'
    },


  ];
  int _selectPageIndex = 0;

  void _selectPage(int index){
    setState(() {
      _selectPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(_pages[_selectPageIndex]['title'])),
        ),

        drawer: const MainDrawer(),
        body: _pages[_selectPageIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.black,
          currentIndex: _selectPageIndex,
          type: BottomNavigationBarType.shifting,
          onTap: _selectPage,
          items:  [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const Icon(Icons.category),
                title: const Text('Categories')),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const Icon(Icons.star),
                title: const Text('Favorites'))
          ],
        ),
      );
  }
}

