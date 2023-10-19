import 'package:flutter/material.dart';


class AnimatedScreen extends StatelessWidget {
const AnimatedScreen({super.key});
static const name = 'AnimatedScreen';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('AnimatedScreen'),
     ),
   );
  }
}