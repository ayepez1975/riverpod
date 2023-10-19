import 'package:app_widgets/presentation/screens/snackbar/snackbar_screen.dart';
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
      ),
      GoRoute(
        path: '/progress',
        name: ProgresssScreen.name,
        builder: (context, state) => const ProgresssScreen(),
      ),
       GoRoute(
        path: '/snackbars',
        name: SnackBarScreen.name,
        builder: (context, state) => const SnackBarScreen(),
      ),
       GoRoute(
        path: '/ui-controls',
        name: UiControlsScreen.name,
        builder: (context, state) => const UiControlsScreen(),
      )



    ],
  );
}
