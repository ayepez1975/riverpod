
import 'package:app_widgets/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../widgets/widgets.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});
  static const name = 'ButtonsScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          AppBarCustom()
        ],
        title: const Text('Buttons'),
      ),
      body: _ButonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}



class _ButonsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          alignment: WrapAlignment.center ,
          spacing: 10,
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text('Elevation button')),
            const ElevatedButton(
                onPressed: null, child: Text('Elevation button disable')),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_rounded),
                label: const Text('Elevation Button Icon')),
            FilledButton(onPressed: (){}, child: const Text('Filled Button')),
            FilledButton.icon(onPressed: (){}, icon: const Icon(Icons.reddit), label: const Text('Filled Icon')),
            OutlinedButton(onPressed: (){}, child: const Text('Outline Button')),
            OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.terminal), label: const Text('Outline Icon')),
            TextButton(onPressed: (){}, child: const Text('Text')),
            TextButton.icon(onPressed: (){}, icon: const Icon(Icons.telegram), label: const Text('Telegrama')),


          const CustomButton(),
            IconButton(onPressed: (){}, icon: const Icon(Icons.radar)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.radar, ),
             style: const ButtonStyle(
              
               iconColor: MaterialStatePropertyAll(Colors.white)
             )
            ,)
            


            
          ],
        ),
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
  const CustomButton({super.key});
 
  @override
  Widget build(BuildContext context) {
    


    return ClipRRect(
      borderRadius: BorderRadius.circular(10) ,
      child: Material(
        color: colorList[3],
        child: InkWell(
          onTap: (){},
          child: const Padding(
            padding:   EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child:  Text('ArmandoYepez', style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}