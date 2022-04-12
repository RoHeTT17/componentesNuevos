import 'package:flutter/material.dart';


class AvatarScreen extends StatelessWidget {
 
  const AvatarScreen({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stan Lee"),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.all(10),
            child: CircleAvatar(
              child: const Text("SL"),
              backgroundColor: Colors.indigo[900],
            ),
          )
        ],
      ),
      body: Center(
        child: const Text('Hola Mundo'),
     ),
   );
  }
}