import 'package:flutter/material.dart';

class InfiniteScrollScreen extends StatelessWidget {
   
  const InfiniteScrollScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //MediaQuery es mas para los dispositivos que tienen un notch. Para quitar el notch y se muestre a full
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,

        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {  
            return FadeInImage(
                placeholder: const AssetImage('lib/assets/jar-loading.gif'), 
                image: NetworkImage('https://picsum.photos/500/300?image=${index+1}'),
                
                
            );
          },
          
        ),
      )
    );
  }
}