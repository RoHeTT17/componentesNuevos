import 'package:flutter/material.dart';


class InputsScreen extends StatelessWidget {
 
  const InputsScreen({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
            child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                TextFormField(
                  autofocus: true,
                  initialValue: '',
                  textCapitalization: TextCapitalization.words,
                  onChanged: (value){

                  },

                  validator: (value){
                    if( value == null) {
                      //Si regresa un String es que no paso la validación
                      return 'Campo requerido';

                    }else{
                      //Si regresa null, quiere decir que la valdiación paso
                      return value.length<3 ? 'Mínimo de 3 letras' : null;
                    }
                  },

                  autovalidateMode: AutovalidateMode.onUserInteraction,

                )
              ],
            ),
          )
        )
   );
  }
}