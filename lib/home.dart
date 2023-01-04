import 'dart:html';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}

class ListItem {
  int value;
  String name;
  ListItem(this.value, this.name);
}

class _HomepageState extends State<Homepage> {
  final List<ListItem> _fruits = [
    ListItem(1, "Apple"),
    ListItem(2, "Papaya"),
    ListItem(3, "Banana"),
  ];

  late List<DropdownMenuItem<ListItem>> dropdownMenuItems;
  late ListItem _selectedItem;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dropdownMenuItems = buildDropdownItem(_fruits);
    _selectedItem = dropdownMenuItems[0].value!;
  }

  List<DropdownMenuItem<ListItem>> buildDropdownItem(List<ListItem> fruits) {
    List<DropdownMenuItem<ListItem>> items = [];
    for (ListItem listItem in fruits) {
      items.add(DropdownMenuItem(
        value: listItem,
        child: Text(listItem.name),
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab06_Project"),
      ),
        body: SafeArea(
          child: ListView(
      children: [
        DropdownButton(
          value: _selectedItem,
          items:dropdownMenuItems,
          onChanged:(value) {
          setState(() {
          _selectedItem = value!;  
          });
          },
        )
      ]
        )),
    );
   }  
   
   

   
  }
  
 
