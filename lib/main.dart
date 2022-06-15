import 'package:flutter/material.dart';

import 'package:flutter_disenos/screens/basic_design.dart';
import 'package:flutter_disenos/screens/home_screen.dart';
import 'package:flutter_disenos/screens/scroll_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  /**
   * Es mejor trabajar basado en widget que en metodos
   * es recomendado por flutter
   */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_design',
      routes: {
        'home_design': (_) => const HomeScreen(),
        'basic_design': (_) => const BasicDesignScreen(),
        'scroll_design': (_) => const ScrollScreen(),
      },

      theme: ThemeData.dark(),
    );
  }
}
