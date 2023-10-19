import 'package:flutter/material.dart';

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subTitle: 'varios botones',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicators',
      subTitle: 'Generales y Controlados',
      link: '/progress',
      icon: Icons.circle_outlined),
  MenuItem(
      title: 'SnackBars',
      subTitle: 'Mensajes Emergentes',
      link: '/snackbars',
      icon: Icons.message),
        MenuItem(
      title: 'UI Controls',
      subTitle: 'CheckBox ListTile, etc',
      link: '/ui-controls',
      icon: Icons.message),
];

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}
