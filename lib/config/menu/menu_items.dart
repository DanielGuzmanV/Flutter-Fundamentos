import 'package:flutter/material.dart';

class MenuItems {

  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title, 
    required this.subtitle, 
    required this.link, 
    required this.icon
  });

}

const appMenuItems = <MenuItems> [
  MenuItems(
    title: 'AristiDev', 
    subtitle: 'Ejemplos de AristiDev', 
    link: '/mainflutter', 
    icon: Icons.people_alt_sharp,
  ),

  MenuItems(
    title: 'Counter Screen', 
    subtitle: 'Contador con riverpod', 
    link: '/counter', 
    icon: Icons.access_time_outlined,
  ),

  MenuItems(
    title: 'Botones', 
    subtitle: 'Botones en flutter', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined,
  ),

  MenuItems(
    title: 'Tarjetas', 
    subtitle: 'Contenedor estilizado', 
    link: '/cards', 
    icon: Icons.credit_card,
  ),

  MenuItems(
    title: 'ProgressIndicators', 
    subtitle: 'Generales y controlados', 
    link: '/progress', 
    icon: Icons.refresh_rounded,
  ),

  MenuItems(
    title: 'Snackbars y dialogos', 
    subtitle: 'Indicadores en pantalla', 
    link: '/snackbars', 
    icon: Icons.info_outline,
  ),

  MenuItems(
    title: 'Animated container', 
    subtitle: 'Stateful widget animado', 
    link: '/animated', 
    icon: Icons.check_box_outline_blank_rounded,
  ),

  MenuItems(
    title: 'UI Controls + Tiles', 
    subtitle: 'Serie de controles de flutter', 
    link: '/ui-controls', 
    icon: Icons.car_rental_outlined,
  ),

  MenuItems(
    title: 'Introduccion a al App', 
    subtitle: 'Tutorial basico de la aplicacion', 
    link: '/tutorial', 
    icon: Icons.accessibility_new_rounded,
  ),

  MenuItems(
    title: 'InfinitedScroll y Pull', 
    subtitle: 'Listas infinitas y refresh', 
    link: '/infinite', 
    icon: Icons.open_in_full_outlined,
  ),




];






