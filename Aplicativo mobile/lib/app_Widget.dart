import 'package:flutter/material.dart';

import 'app_controller.dart';
import 'empresas_page.dart';
import 'historia_page.dart';
import 'home_Page.dart';
import 'jogo_Page.dart';
import 'links_Page.dart';

MaterialColor createMaterialColor(Color color) {
  Map<int, Color> swatch = {
    50: color.withOpacity(0.1),
    100: color.withOpacity(0.2),
    200: color.withOpacity(0.3),
    300: color.withOpacity(0.4),
    400: color.withOpacity(0.5),
    500: color.withOpacity(0.6),
    600: color.withOpacity(0.7),
    700: color.withOpacity(0.8),
    800: color.withOpacity(0.9),
    900: color,
  };
  return MaterialColor(color.value, swatch);
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: createMaterialColor(Color.fromARGB(255, 52, 14, 58)), 
              ),
          initialRoute: '/',
          routes: {
            '/': (context) => HomePage(),
            '/jogo': (context) => JogoPage(),
            '/historia': (context) => HistoriaPage(),
            '/empresa': (context) => EmpresasPage(),
            '/links': (context) => LinkPage(),
          },
        );
      }, 
    );
  }
}
