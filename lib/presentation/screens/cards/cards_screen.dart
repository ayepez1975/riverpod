import 'package:flutter/material.dart';


class CardsScreen extends StatelessWidget {
const CardsScreen({super.key});
static const name = 'CardsScreen';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar( 
       title: const Text('Cards'), 
      ),
      body: const Center(
        child: Text('CardsScreen'),
     ),
   );
  }
}