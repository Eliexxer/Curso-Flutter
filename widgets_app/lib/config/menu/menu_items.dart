import 'package:flutter/material.dart' show IconData, Icons;

class MenuItems {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Botones',
    subtitle: 'Botones',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),

  MenuItems(
    title: 'Cards',
    subtitle: 'Cards',
    link: '/cards',
    icon: Icons.credit_card,
  ),

  MenuItems(
    title: 'Progress Indicators',
    subtitle: 'Progress Indicators',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),

  MenuItems(
    title: 'App Tutorial',
    subtitle: 'App Tutorial',
    link: '/app_tutorial',
    icon: Icons.app_registration,
  ),

  MenuItems(
    title: 'Infinite Scroll',
    subtitle: 'Infinite Scroll',
    link: '/infinite_scroll',
    icon: Icons.list_alt_outlined,
  ),
];
