import 'package:app_widgets/config/menu/menu_items.dart';
import 'package:app_widgets/presentation/screens/home/providers/home_providers.dart';
import 'package:app_widgets/presentation/widgets/providers/side_menu_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends ConsumerWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasNoch = MediaQuery.of(context).viewPadding.top;
    final titleStyle = Theme.of(context).textTheme.titleLarge;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: hasNoch),
      child: NavigationDrawer(
         
          selectedIndex: ref.watch(navDrawerIndexProvider),
          onDestinationSelected: (value) {
            ref.read(navDrawerIndexProvider.notifier).changeNavigator(value);
            context.push(appMenuItems[value].link);  
            ref.read(scafooldKeyProvider).currentState!.closeDrawer();
          },
          children: [
            Container(
                alignment: Alignment.center,
                child: Text('Menu Principal', style: titleStyle)),
            const SizedBox(
              height: 20,
            ),
            ...appMenuItems
                .sublist(0, 3)
                .map((menuItem) => NavigationDrawerDestination(
                      icon: Icon(menuItem.icon),
                      label: Text(menuItem.title),
                    )),
            const Padding(
              padding: EdgeInsets.fromLTRB(28, 16, 16, 10),
              child: Divider(),
            ),
            ...appMenuItems
                .sublist(3)
                .map((menuItem) => NavigationDrawerDestination(
                      icon: Icon(menuItem.icon),
                      label: Text(menuItem.title),
                    )),
          ]),
    );
  }
}
