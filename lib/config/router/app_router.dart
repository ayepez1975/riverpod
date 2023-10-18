import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../presentation/screens/screens.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: HomeScreen.name,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/buttons',
        name: ButtonsScreen.name,
        builder: (context, state) => const ButtonsScreen(),
      ),
      GoRoute(
        path: '/cards',
        name: CardsScreen.name,
        builder: (context, state) => const CardsScreen(),
      )

    ],
  );
}
