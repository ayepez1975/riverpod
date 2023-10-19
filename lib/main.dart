import 'package:app_widgets/config/router/app_router.dart';
import 'package:app_widgets/config/theme/app_theme.dart';
import 'package:app_widgets/presentation/screens/home/providers/home_providers.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() => runApp(
   const ProviderScope(child:  MyApp())
  
  );

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return  MaterialApp.router(
      routerConfig: ref.watch(appRouterProvider),
      debugShowCheckedModeBanner: false,

      
      theme: AppTheme(selectedColor: 3, isDarkmode: ref.watch(darkModeProvider)).getTheme(),
      title: 'Material App',
    );
  }
}
