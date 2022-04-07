import 'package:flutter/material.dart';

import 'package:componentesnews/router/app_routes.dart';
import 'package:componentesnews/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
        itemBuilder:(context, index) => ListTile(
          leading: Icon(AppRoutes.menuOptions[index].icon, color: AppTheme.primary,),
          title:   Text(AppRoutes.menuOptions[index].name),
          onTap: (){
            Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
          },
        ), 
        separatorBuilder: (BuildContext context, int index)=> const Divider(), 
        itemCount: AppRoutes.menuOptions.length
        )
    );
  }
}