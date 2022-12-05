import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:training/model/country.dart';

class DropDownExample extends StatefulWidget {
  const DropDownExample({Key? key}) : super(key: key);

  @override
  State<DropDownExample> createState() => _DropDownExampleState();
}

class _DropDownExampleState extends State<DropDownExample> {
  contry? selectedvalueCountry;

  List<contry> clist = [
    contry(ID: 1, name: "ch"),
    contry(ID: 2, name: "ind"),
    contry(ID: 3, name: "pk"),
    contry(ID: 4, name: "ch")
  ];
//for model class country   {ID:NAME}
  List<DropdownMenuItem<contry>> getMenuItemsFromCountry() {
    List<DropdownMenuItem<contry>> menulist = [];

    for (int i = 0; i < clist.length; i++) {
      DropdownMenuItem<contry> item = DropdownMenuItem<contry>(
        child: Text(clist[i].name),
        value: clist[i],
      );
      menulist.add(item);
    }
    return menulist;
  }

//for string.....
  String? selectedvalue;
  List<String> countries = ["PAK", "INDIA", "CHINA", "IRAN"];

  List<DropdownMenuItem<String>> getMenuItems() {
    List<DropdownMenuItem<String>> menulist = [];

    for (int i = 0; i < countries.length; i++) {
      DropdownMenuItem<String> item = DropdownMenuItem<String>(
        child: Text(countries[i]),
        value: countries[i],
      );
      menulist.add(item);
    }
    return menulist;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drop Down Example')),
      body: Column(
        children: [
          DropdownButton(
              isExpanded: true,
              value: selectedvalueCountry,
              items: getMenuItemsFromCountry(),
              onChanged: (value) {
                setState(() {
                  print(value!.ID);
                  selectedvalueCountry = value;
                });
              }),
          Text(
            selectedvalueCountry == null
                ? ""
                : selectedvalueCountry!.ID.toString(),
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
