import 'package:flutter/material.dart';

import 'package:componentesnews/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
 
  const InputsScreen({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {

    //para poder obtener el estado de los inputs dentro del Form
    final GlobalKey<FormState> myFormkey = GlobalKey<FormState>();  

    final Map<String,String> fromValues = {
      'first_name': 'El roger',
      'last_name' : 'Jernandez',
      'email'     : 'rhernandezr278@gmail.com',
      'psw'       : 'password'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
            child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormkey,  
              child: Column(
                children: [
            
                 InputCustom(pLabelText:  'Nombre', pHelperText: 'Nombre del usuario',),
                 SizedBox(height: 10,),
            
                 InputCustom(pLabelText:  'Apellido',),
                 SizedBox(height: 10,),
            
                 InputCustom(pLabelText:  'Correo', pHelperText: 'Email', pTextInputType: TextInputType.emailAddress,),
                 SizedBox(height: 10,),
            
                 InputCustom(pLabelText:  'Password', pHelperText: 'Contraseña', pObscureText: true,),
                 SizedBox(height: 10,),
            
                 ElevatedButton(
                   child: const SizedBox(
                                    child: Center(child: Text('Guardar')), 
                                    width: double.infinity,),
                   onPressed: (){

                      //Minimizar teclado
                      FocusScope.of(context).requestFocus(FocusNode());

                      if(!myFormkey.currentState!.validate())
                        print('Formulario no valido');
                        return;
                   },
                    
                ),
            
            
                ],
              ),
            ),
          )
        )
   );
  }
}
