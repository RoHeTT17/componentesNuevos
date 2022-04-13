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
      body: const Center(
        child: CircleAvatar(
          maxRadius: 120,
          backgroundImage: NetworkImage('https://fotografias.antena3.com/clipping/cmsimages01/2016/09/06/52D96EF9-21A0-4B07-AE38-28A20D47106B/98.jpg?crop=1120,630,x0,y5&width=1900&height=1069&optimize=high&format=webply'),
        )
     ),
   );
  }
}