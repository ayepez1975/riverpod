import 'package:app_widgets/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({super.key});
  static const name = 'SnackBarScreen';

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Armando Yepes'),
        action: SnackBarAction(label: 'Deshacer', onPressed: (){}),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const [AppBarCustom()],
          title: const Text('SnackBar y Dialogos'),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            showCustomSnackbar(context);
          },
          label: const Text('Mostrar Snacbkar'),
          icon: const Icon(Icons.remove_red_eye_outlined),
        ));
  }
}
