
import 'package:flutter/material.dart';

class ItemsComponents {

  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const ItemsComponents({
    required this.title, 
    required this.subtitle, 
    required this.link, 
    required this.icon
  });

}

const appComponents = <ItemsComponents> [

  ItemsComponents(
    title: 'Buttons', 
    subtitle: 'Botones basicos', 
    link: '/buttonsBasic', 
    icon: Icons.workspaces_sharp
  ),

  ItemsComponents(
    title: 'Images', 
    subtitle: 'Imagenes con flutter', 
    link: '/imageBasic', 
    icon: Icons.workspaces_sharp
  ),

  ItemsComponents(
    title: 'Texts', 
    subtitle: 'Textos basicos', 
    link: '/textBasic', 
    icon: Icons.workspaces_sharp
  ),

  ItemsComponents(
    title: 'TextField', 
    subtitle: 'Textfiels basicos', 
    link: '/textfieldBasic', 
    icon: Icons.workspaces_sharp
  ),




];









