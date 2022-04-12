import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
         child: ElevatedButton(
           child: const Padding(
             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
             child: Text('Mostrar Alert', style: TextStyle(fontSize: 16),),
           ),
          
           //onPressed: () => displayDialogAndroid(context),
           //onPressed: () => displayDialogIOS(context),
          
            onPressed: () => Platform.isAndroid 
                          ? displayDialogAndroid(context) 
                          : displayDialogIOS(context)

          ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close_rounded),
        onPressed: () {
          Navigator.pop(context);
        },
        
      ),
    );
  }

  void displayDialogAndroid(BuildContext context){

      showDialog(
        barrierDismissible: true, //Se cierra al dar Tab fuera del Dialog 
        context: context, 
        builder: (context){

              return AlertDialog(
                 title: const Text("Titulo Dialog"),
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                 elevation: 5,
                 content: Column(
                   mainAxisSize: MainAxisSize.min,//Crezca deacuerdo al contenido
                   children: const [
                     Text('Este es el contenido del Alert'),
                     SizedBox(height: 10,),
                     FlutterLogo(size: 100,)
                   ],
                 ),
                 
                 actions: [

                  TextButton( 
                    child: const Text("Cerrar"),
                    onPressed: (){
                        Navigator.pop(context);
                    },
                  )
                 ],  
              );
        }
      );
  }

  void displayDialogIOS(BuildContext context){
    
    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context){
          return CupertinoAlertDialog(
                 title: const Text("Titulo DialogCupertino"),
                 content: Column(
                   mainAxisSize: MainAxisSize.min,//Crezca deacuerdo al contenido
                   children: const [
                     Text('Este es el contenido del Alert Cupertino'),
                     SizedBox(height: 10,),
                     FlutterLogo(size: 100,)
                   ],
                 ),
                 
                 actions: [
                  TextButton( 
                    child: const Text("Cerrar",style:  TextStyle(color: Colors.red),),
                    onPressed: (){
                        Navigator.pop(context);
                    },
                  ),

                  TextButton( 
                    child: const Text("ok"),
                    onPressed: (){
                        Navigator.pop(context);
                    },
                  )
                 ],  
          );
      }
    );

  }


}