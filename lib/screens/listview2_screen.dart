import 'package:flutter/material.dart';


class ListView2Screen extends StatelessWidget {
 
  const ListView2Screen({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
 
    final options = ["MegaMan","Metal Gear","Super Smash","Hades"];
 
    return  Scaffold(
      appBar: AppBar(
          title: const Text("ListView Tipo 2"),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (BuildContext context, int index) => ListTile(
            leading:  const Icon(Icons.abc),
            title:    Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
        ), 
        separatorBuilder: (BuildContext _ , int __) =>  const Divider(),

      )
   );
  }
}