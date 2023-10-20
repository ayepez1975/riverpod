

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'side_menu_providers.g.dart';

@Riverpod(keepAlive: true)
class NavDrawerIndex extends _$NavDrawerIndex {
  @override
   int build() => 0;

   void changeNavigator(int navIndex){
      state = navIndex;
   }
}