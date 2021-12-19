import 'package:flutter/material.dart';
import 'package:travel_guid/models/travel_places.dart';
import 'package:travel_guid/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const filtersScreenName = '/filters';

  final Function saveFilters;
  final Map<String,bool> currentFilter;

  FiltersScreen(this.currentFilter,this.saveFilters);

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {


  Widget _BuildSwitchList(String title,String subtitle,bool currentValue,Function(bool) updateValue){

    return SwitchListTile(
      title: Text(
        title,
        style: TextStyle(),),
      value: currentValue,
      subtitle: Text(subtitle),
      onChanged: updateValue,
      );
  }
  bool _simple = false;
  bool _challenging = false;
  bool _hard = false;

  @override
  void initState() {
    _simple = widget.currentFilter['simple']!;
    _challenging = widget.currentFilter['challenging']!;
    _hard = widget.currentFilter['hard']!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Center(
            child: Text("Filters Screen")),
        actions: <Widget>[
          IconButton(onPressed: (){
            final selectFilters = {
              'simple': _simple,
              'challenging': _challenging,
              'hard':_hard,
            };
            widget.saveFilters(selectFilters);
            },
              icon: Icon(Icons.save))

        ],
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
          padding: const EdgeInsets.all(20),
          child: const Text(
            'Adjust your travel selection',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          ),
          Expanded(child: ListView(
            children: <Widget>[
              _BuildSwitchList(
                  'Simple',
                  'Simple Travel Places',
                  _simple,
                      (newValue){
                setState(() {
                  _simple = newValue;
                });
                  }),
              _BuildSwitchList(
                  'Challenging',
                  'Challenging Travel Places',
                  _challenging,
                      (newValue){
                    setState(() {
                      _challenging = newValue;
                    });
                  }),
              _BuildSwitchList(
                  'Hard',
                  'Hard Travel Places',
                  _hard,
                      (newValue){
                    setState(() {
                      _hard = newValue;
                    });
                  }),
            ],
          ))
        ],
      ),
    );
  }
}
