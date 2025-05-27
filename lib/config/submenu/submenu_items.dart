
import 'package:flutter/material.dart';

class SubmenuItems {

  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const SubmenuItems({
    required this.title, 
    required this.subtitle, 
    required this.link, 
    required this.icon
  });

}

const appSubMenuItems = <SubmenuItems>[

  SubmenuItems(
    title: 'Layouts', 
    subtitle: 'Tipos de layouts', 
    link: '/layouts', 
    icon: Icons.add_road_outlined
  ), 

  SubmenuItems(
    title: 'Components', 
    subtitle: 'Tipos de componentes', 
    link: '/layouts', 
    icon: Icons.add_chart_outlined
  ), 




];




