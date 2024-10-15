import 'package:flutter/material.dart';

import 'app_controller.dart';
import 'home_Page.dart';
import 'jogo_Page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.blue, 
              brightness: AppController.instance.isDartTheme 
              ? Brightness.dark 
              : Brightness.light),
              initialRoute: '/',
          routes: {
            '/': (context) => HomePage(),
            '/jogo': (context) => JogoPage(),
          },
        );
      }, 
    );
  }
}
