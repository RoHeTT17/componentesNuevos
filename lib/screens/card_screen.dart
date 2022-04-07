import 'package:flutter/material.dart';
import 'package:componentesnews/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
        centerTitle: true,
      ),
      body: ListView(
        padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
             CardCustom(),
             SizedBox(height: 10,),
             Card2Custom()
        ],
      )
    );
  }
}
