
import 'package:flutter/material.dart';

class ItemsLayouts {

  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const ItemsLayouts({
    required this.title, 
    required this.subtitle, 
    required this.link, 
    required this.icon
  });

}

const appComponents = <ItemsLayouts> [

  ItemsLayouts(
    title: 'Columns', 
    subtitle: 'Columnas basicas', 
    link: '/columnBasic', 
    icon: Icons.workspaces_sharp
  ),

  ItemsLayouts(
    title: 'Filas', 
    subtitle: 'Filas basicas', 
    link: '/rowBasic', 
    icon: Icons.workspaces_sharp
  ),

];



