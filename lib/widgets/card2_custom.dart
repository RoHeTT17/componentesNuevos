import 'package:componentesnews/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Card2Custom extends StatelessWidget {

  final String imageURL;
  final String? titleImg;

  const Card2Custom({ 
    Key? key,
   required this.imageURL, 
   this.titleImg 
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      shadowColor: AppTheme.primary.withOpacity(0.7),
      elevation: 10,
      child: Column(
        children:[

          //Image(image: NetworkImage('https://static.vecteezy.com/system/resources/previews/000/246/312/original/mountain-lake-sunset-landscape-first-person-view-vector.jpg')),
             FadeInImage(
                    image: NetworkImage(imageURL), 
                    placeholder: AssetImage('lib/assets/jar-loading.gif'),
                    width: double.infinity,
                    height: 230,
                    fit: BoxFit.cover,
                    fadeInDuration: const Duration(milliseconds: 400),
                    ),        
                   
                   if(titleImg != null)
                   Container(
                     alignment: AlignmentDirectional.centerEnd,
                     padding: EdgeInsets.only(right: 20,top: 10, bottom: 10),
                    //  child:  Text(titleImg ?? 'No title'), // como se hce la evaluación del if, esto no es nesario
                    child: Text(titleImg!), // ya se evalua que no sea null, por eso se pone el !
                   )

                   ],

      ),
    );
  }
}