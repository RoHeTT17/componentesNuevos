import 'dart:math' show Random ;

import 'package:flutter/material.dart';


class AnimetedScreen extends StatefulWidget {
 
  const AnimetedScreen({Key? key}) : super(key: key);

  @override
  State<AnimetedScreen> createState() => _AnimetedScreenState();
}

class _AnimetedScreenState extends State<AnimetedScreen> {

  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animeted Container'),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.elasticInOut,
          width: _width,
          height: _height,
          // color: Colors.red,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius
          ), 
        
        )
     ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_circle_outline,size: 35,),
        onPressed: changeShape,
        ),

   );
  }


  void changeShape(){

      final random = Random();

      setState(() {
         _width =  random.nextInt(300).toDouble() +35;
         _height = random.nextInt(300).toDouble() +35;
         _color = Color.fromRGBO(
                                  random.nextInt(255),
                                  random.nextInt(255), 
                                  random.nextInt(255), 
                                  1);

         _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble() + 10);  
      });
  }

}