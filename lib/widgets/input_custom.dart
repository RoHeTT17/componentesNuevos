import 'package:flutter/material.dart';

class InputCustom extends StatelessWidget {

  final String? pInitialValue;
  final String? pHintText;
  final String? pLabelText;
  final String? pHelperText;
  final IconData? pIcon;
  final IconData? pSuffix;
  final bool? pAutoFocus; 
  final TextInputType? pTextInputType;
  final bool? pObscureText;

  final String formProperty;
  final Map<String,String> formValues;

  const InputCustom({
    Key? key, 
    this.pHintText,
    this.pLabelText, 
    this.pHelperText, 
    this.pIcon, 
    this.pSuffix,
    this.pAutoFocus, 
    this.pTextInputType, 
    this.pInitialValue,
    this.pObscureText, 
   required this.formProperty, 
   required this.formValues

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      autofocus: pAutoFocus ?? false,
      
      initialValue: pInitialValue,
      keyboardType: pTextInputType,
      obscureText: pObscureText ?? false ,

      textCapitalization: TextCapitalization.words,
      onChanged: (value){
            formValues[formProperty] = value;
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

      //Personalizar el TextField
      decoration: InputDecoration(
        hintText:   pHintText,
        labelText:  pLabelText,
        helperText: pHelperText,
       // prefixIcon: Icon(Icons.group_add_outlined),
        suffixIcon: pSuffix == null ? null : Icon(pSuffix),
        icon:       pIcon == null ? null : Icon(pIcon),

        // counterText: 'Letras 56',
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Colors.green
        //   )

        // ),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(10), 
        //     topRight: Radius.circular(10),
        //   )
        // )

      ),

    );
  }
}