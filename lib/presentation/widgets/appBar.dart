import 'package:app_widgets/presentation/screens/home/providers/home_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppBarCustom extends ConsumerWidget {

  const  AppBarCustom({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isdarkMode = ref.watch(darkModeProvider);
    return 
    
            IconButton(
              icon: isdarkMode ? const Icon( Icons.light_mode_outlined ) : const Icon( Icons.dark_mode_outlined  ) ,
              onPressed: (){
                ref.read(darkModeProvider.notifier).changeTheme();
              }, );
    
    
  }
}