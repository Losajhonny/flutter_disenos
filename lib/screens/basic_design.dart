
import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          const Image(image: AssetImage('assets/landscape.jpg')),

          const Title(),

          const ButtonSection(),

          // descripcion
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: const Text('Commodo qui officia esse cillum enim dolor adipisicing amet ullamco velit occaecat incididunt veniam quis. Consequat ea aliqua labore reprehenderit irure enim tempor fugiat eu nostrud irure voluptate ullamco. Veniam ad esse officia est occaecat nisi qui dolore excepteur cillum. Aliquip ex irure exercitation deserunt culpa exercitation amet nisi eu veniam ullamco ipsum amet dolore.')
          )

        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Sit cillum sunt cupidatat ullamco.',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'Sit cillum sunt cupidatat ullamco.',
                style: TextStyle(
                  color: Colors.black45,
                ),
              ),
            ],
          ),

          Expanded(child: Container()),

          const Icon(Icons.star, color: Colors.red),

          const Text('41'),

        ],
      ),
    );
  }
}


class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [

          CustomButton(icon: Icons.call, text: 'CALL'),
          CustomButton(icon: Icons.route, text: 'ROUTE'),
          CustomButton(icon: Icons.share, text: 'SHARE'),

        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 40,),
        Text(text, style: const TextStyle(color: Colors.blue)),
      ],
    );
  }
}
