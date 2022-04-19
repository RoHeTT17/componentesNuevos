import 'package:flutter/material.dart';

import 'package:componentesnews/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
 
  const InputsScreen({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {

    //para poder obtener el estado de los inputs dentro del Form
    final GlobalKey<FormState> myFormkey = GlobalKey<FormState>();  

    final Map<String,String> formValues = {
      'first_name': 'El roger',
      'last_name' : 'Jernandez',
      'email'     : 'rhernandezr278@gmail.com',
      'psw'       : 'password',
      'user'      :  'normal'
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
            
                 InputCustom(pLabelText:  'Nombre', pHelperText: 'Nombre del usuario', formValues: formValues, formProperty: 'first_name',),
                 const SizedBox(height: 10,),
            
                 InputCustom(pLabelText:  'Apellido', formValues: formValues, formProperty: 'last_name',),
                 const SizedBox(height: 10,),
            
                 InputCustom(pLabelText:  'Correo', pHelperText: 'Email', pTextInputType: TextInputType.emailAddress, formValues: formValues, formProperty: 'email',),
                 const SizedBox(height: 10,),
            
                 InputCustom(pLabelText:  'Password', pHelperText: 'Contraseña', pObscureText: true, formValues: formValues, formProperty: 'psw',),
                 const SizedBox(height: 10,),
            
                 DropdownButtonFormField<String>(
                   value: 'Admin',
                   items: const [
                     DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                     DropdownMenuItem(value: 'Super', child: Text('Super')),
                     DropdownMenuItem(value: 'normal',child: Text('normal')),
                   ], 

                   onChanged: (value){
                      formValues['user'] = value ?? 'noraml';
                   }
                ), 


                 ElevatedButton(
                   child: const SizedBox(
                                    child: Center(child: Text('Guardar')), 
                                    width: double.infinity,),
                   onPressed: (){

                      //Minimizar teclado
                      FocusScope.of(context).requestFocus(FocusNode());

                      if(!myFormkey.currentState!.validate()){
                        print('Formulario no valido');
                        return;
                      }

                        //imprimir valores del formularios
                        print(formValues);
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
