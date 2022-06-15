


import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        // tienen que ser table row
        TableRow(
          children: [
            //
            _SingleCard(color: Colors.blue, icon: Icons.border_all, text: 'General'),
            _SingleCard(color: Colors.pinkAccent, icon: Icons.car_rental, text: 'Transport'),
          ]
        ),


        TableRow(
          children: [
            //
            _SingleCard(color: Colors.purple, icon: Icons.shop, text: 'Shopping'),
            _SingleCard(color: Colors.purpleAccent, icon: Icons.cloud, text: 'Bill'),
          ]
        ),


        TableRow(
          children: [
            //
            _SingleCard(color: Colors.deepPurple, icon: Icons.movie, text: 'Entertainment'),
            _SingleCard(color: Colors.pinkAccent, icon: Icons.food_bank, text: 'Grocery'),
          ]
        )
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard({Key? key, required this.icon, required this.color, required this.text}) : super(key: key);

  final IconData icon;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    // aplicar blur
    // es el desenfoque de atras

    /**
     * existe un widget que se encarga
     * de cortar lo que esta afuera de su
     * contenedor
     */
    return _CardBackground(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 30,
          child: Icon(
            icon,
            size: 35,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 18,
          ),
        )
      ],
    ));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({
    Key? key, 
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5
          ),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
