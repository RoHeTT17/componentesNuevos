import 'package:flutter/material.dart';

import 'package:componentesnews/models/models.dart';
import '../screens/screens.dart';

class AppRoutes{

  //NOTA: Las rutas (en esta ocación se usan para crear el menú)

   static const initialRoute = 'home';

  // Esta manera funciona pero es mas "estatica" y menos flexible
  //  static Map<String, Widget Function(BuildContext)> routes = {
  //       'home'  : (context)  => const HomeScreen(),
  //       'card'  : (context)  => const CardScreen(),
  //       'alert' : (context) =>  const AlertScreen(),
  //       'view1' : (context) =>  const ListViewScreen(),
  //       'view2' : (context) =>  const ListView2Screen(),
  //   }; 

   //Hacer el ruteo de forma mas dinamia
   //1. Crear las opciones del menú 
   static final menuOptions = <MenuOption>[
     //Se comenta para que no forme parte del ménu
     //MenuOption(route: 'home' , name: 'Home Screen', screen: const HomeScreen(),      icon: Icons.home),
     MenuOption(route: 'card' ,     name: 'Tarjetas',               screen: const CardScreen(),      icon: Icons.credit_card),
     MenuOption(route: 'alert',     name: 'Alertas',                screen: const AlertScreen(),     icon: Icons.bedroom_child_outlined),
     MenuOption(route: 'view1',     name: 'ListView 1',             screen: const ListViewScreen(),  icon: Icons.list_alt),
     MenuOption(route: 'view2',     name: 'ListView 2',             screen: const ListView2Screen(), icon: Icons.list),
     MenuOption(route: 'avatar',    name: 'Avatar',                 screen: const AvatarScreen(),    icon: Icons.supervised_user_circle_outlined),
     MenuOption(route: 'container', name: 'Animeted Container',     screen: const AnimetedScreen(),  icon: Icons.play_circle_outline_outlined),
     MenuOption(route: 'inputs',    name: 'Text Inputs',            screen: const InputsScreen(),    icon: Icons.input_rounded),
     MenuOption(route: 'Slider',    name: 'Slider && Switchs',      screen: const SliderScreen(),    icon: Icons.swap_horizontal_circle_sharp),
     MenuOption(route: 'Scroll',    name: 'Infinite Scroll',        screen: const InfiniteScrollScreen(),    icon: Icons.build_circle_outlined),
   ];
  
   //Obtener las opciones
   static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    //agregar la ruta para poder navegar
    appRoutes.addAll(({initialRoute : (BuildContext context) => const HomeScreen()}));

    for (final option in menuOptions) {
        appRoutes.addAll({option.route : ((BuildContext context) => option.screen)});
    }

    return appRoutes;

   }

   static Route<dynamic> onGenerateRoute( RouteSettings settings){
         return MaterialPageRoute(
           builder: (context) => const AlertScreen(),
          
           );
  }


}