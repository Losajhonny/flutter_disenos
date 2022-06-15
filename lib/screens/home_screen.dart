
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_disenos/widgets/card_table.dart';
import 'package:flutter_disenos/widgets/custom_bottom_navigate.dart';
import 'package:flutter_disenos/widgets/page_title.dart';

import '../widgets/background.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    // status bar
    // es donde aparece la imagen de bateria, hora , señal
    // iconos blanco
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light );

    return Scaffold(
      body: 
      // widgets sobre otros stack
      Stack(
        children: const [

          // background
          Background(),

          //
          _HomeBody(),
        ],
      ),

      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // si el hijo es mas grande se hace un crollview
    return SingleChildScrollView(
      child: Column(
        children: [

          // titulos
          PageTitle(),

          //
          const CardTable(),
          
        ],
      ),
    );
  }
}
