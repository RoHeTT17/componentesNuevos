import 'package:flutter/material.dart';


class ListViewScreen extends StatelessWidget {
 
  const ListViewScreen({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
 
    final options = {"MegaMan","Metal Gear","Super Smash","Hades"};
 
    return  Scaffold(
      appBar: AppBar(
          title: const Text("ListView Tipo 1"),
      ),
      body: ListView(
        children: [
      
          ...options.map((game) => 
          ListTile(
            leading:  const Icon(Icons.abc),
            title:    Text(game),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
          )).toList(),  

        ],
      )
   );
  }
}