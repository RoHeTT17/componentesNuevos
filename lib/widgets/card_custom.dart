import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  const CardCustom({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [

          const ListTile(
            leading: Icon(Icons.phone),
            title: Text('Soy una tarjeta'),
            subtitle: Text('Enim exercitation laboris ad quis ipsum nulla incididunt. Exercitation incididunt reprehenderit nostrud Lorem culpa est officia sunt nostrud eu cupidatat. Sint minim duis ad quis nostrud id laboris exercitation voluptate elit nulla dolore. Veniam incididunt ut amet reprehenderit excepteur consequat ex enim proident dolore sint amet officia laborum. Consequat excepteur veniam aliquip quis anim laborum aliquip. Amet cupidatat pariatur ut nisi elit adipisicing aute commodo laborum commodo consectetur reprehenderit. Deserunt tempor ullamco ullamco deserunt tempor quis et mollit nostrud ut consequat eiusmod ex.'),
          ),

          Padding(
            padding: const EdgeInsets.only( right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                  TextButton(
                    onPressed: (){}, 
                    child: const Text('Cancelar')
                    
                    ),

                    TextButton(
                      onPressed:(){},
                     child: const Text('Aceptar')
                     )

              ],
            ),
          )

        ],
      ),
    );
  }
}