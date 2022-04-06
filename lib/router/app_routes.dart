import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes{


   static const initialRoute = 'home';

   static Map<String, Widget Function(BuildContext)> routes = {
        'home'  : (context)  => const HomeScreen(),
        'card'  : (context)  => const CardScreen(),
        'alert' : (context) =>  const AlertScreen(),
        'view1' : (context) =>  const ListViewScreen(),
        'view2' : (context) =>  const ListView2Screen(),
      };

      static Route<dynamic> onGenerateRoute( RouteSettings settings){
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
          
          );
      }


}