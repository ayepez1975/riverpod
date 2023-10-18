import 'package:app_widgets/config/menu/menu_items.dart';
import 'package:app_widgets/presentation/screens/home/providers/home_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  static const name = 'HomeScreen';

 
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isdarkMode = ref.watch(darkModeProvider);

    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: isdarkMode ? const Icon( Icons.light_mode_outlined ) : const Icon( Icons.dark_mode_outlined  ) ,
              onPressed: (){
                ref.read(darkModeProvider.notifier).changeTheme();
              }, )
          ],
          title: const Text('Materia Widget'),
        ),
        
        body: _HomeView());
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menu = appMenuItems[index];
        return _CustomListTile(menu: menu);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menu,
  });

  final MenuItem menu;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(menu.icon),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      title: Text(menu.title),
      subtitle: Text(menu.subTitle),
      onTap: () {
        
        context.push(menu.link);
      },
    );
  }
}
