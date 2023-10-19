import 'package:app_widgets/widgets/widgets.dart';
import 'package:flutter/material.dart';


class TutorialScreen extends StatelessWidget {
const TutorialScreen({super.key});
static const name = 'TutorialScreen';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar( 
      actions: const [
        AppBarCustom()
        
      ],
       title: const Text('Tutorial'), 
      ),
      body: const Center(
        child: Text('TutorialScreen'),
     ),
   );
  }
}