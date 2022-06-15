
import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const boxDecoration = 
        BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            // se controla mas el gradiente
            stops: [
              0.5,
              0.5
            ],
            colors: [
              Color(0xff5EE8C5),
              Color(0xff30DAF6),
            ]
          )
        );

    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          // comportamiento de espacio en blanco temporal
          // así como ios
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            const Page1(),
            Page2(),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      // fit: StackFit.passthrough,
      children: const [

        Background(),

        MainContent()

      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Colors.white
          );

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          const SizedBox(height: 30),
          const Text(
            '11°',
            style: textStyle,
          ),
          const Text(
            'Miércoles',
            style: textStyle,
          ),
    
          Expanded(child: Container()),
          
          const Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      alignment: Alignment.topCenter,
      color: const Color(0xff30BAD6),
      child: const Image(
        image: AssetImage('assets/scroll.png'),
        // fit: BoxFit.fill,
      )
    );
  }
}

class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Text(
              'Bienvenido',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff0098FA),
          ),
        ),
      ),
    );
  }

}
