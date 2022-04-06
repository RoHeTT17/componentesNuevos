import 'package:componentesnews/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'screens/screens.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const CardScreen(),

      //Rutas de forma clasica
      // initialRoute: 'home',
      // routes: {
      //   'home'  : (context)  => const HomeScreen(),
      //   'card'  : (context)  => const CardScreen(),
      //   'alert' : (context) => const AlertScreen(),
      //   'view1' : (context) => const ListViewScreen(),
      //   'view2' : (context) => const ListView2Screen(),
      // },

      //Con archivo AppRoute
      initialRoute: AppRoutes.initialRoute,
      routes:  AppRoutes.routes,
      onGenerateRoute: AppRoutes.onGenerateRoute,

    );
  }
}