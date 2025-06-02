import 'package:basic_flutter/config/menu/menu_items.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  int navDrawerIndex = 1;

  @override
  Widget build(BuildContext context) {

    final tieneNotch = MediaQuery.of(context).viewPadding.top > 35;

    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
        });
      },

      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20, tieneNotch? 10 : 20, 16, 10),
          child: const Text('Menu lateral'),
        ),

        ...appMenuItems
        .sublist(4, 8)
        .map((itemVal) => NavigationDrawerDestination(
          icon: Icon(itemVal.icon),
          label: Text(itemVal.title),
        )),

        const Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
          child: Divider(
            color: Colors.black,
          ),
        ),

        Padding(
          padding: EdgeInsets.fromLTRB(20, tieneNotch? 10 : 20, 16, 10),
          child: const Text('Mas Opciones'),
        ),

        ...appMenuItems
        .sublist(0, 3)
        .map((itemVal) => NavigationDrawerDestination(
          icon: Icon(itemVal.icon),
          label: Text(itemVal.title),
        )),





        

        
      ]
    );
  }
}