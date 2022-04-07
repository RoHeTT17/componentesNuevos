import 'package:flutter/material.dart';

class MenuOption{

  final String   route;
  final IconData icon;
  final String   name;
  final Widget   screen;

  //Constructor posicional 
  // MenuOption(this.route, this.icon, this.name, this.screen);

  //Constructor por nombre
  MenuOption({
             required this.route, 
             required this.icon,
             required this.name,
             required this.screen
            });


}