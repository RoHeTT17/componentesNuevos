import 'package:flutter/material.dart';

class Card2Custom extends StatelessWidget {
  const Card2Custom({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: const [
          Image(image: NetworkImage('https://static.vecteezy.com/system/resources/previews/000/246/312/original/mountain-lake-sunset-landscape-first-person-view-vector.jpg')),
        ],
      ),
    );
  }
}