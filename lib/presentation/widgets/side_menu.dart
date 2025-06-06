import 'package:basic_flutter/config/menu/menu_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> valueScaffoldKey;

  const SideMenu({
    super.key, 
    required this.valueScaffoldKey
  });

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {

    final tieneNotch = MediaQuery.of(context).viewPadding.top > 35;

    return NavigationDrawer(

      // Seleccion de una opcion:
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
        });

        // Ir a la opcion seleccionada:
        final valueItems = appMenuItems[value];
        context.push(valueItems.link);

        // Volvemos al menu principal
        // widget.valueScaffoldKey.currentState?.closeDrawer();
      },

      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20, tieneNotch? 10 : 20, 16, 10),
          child: const Text('Menu lateral'),
        ),

        ...appMenuItems
        .sublist(0, 3)
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
        .sublist(3)
        .map((itemVal) => NavigationDrawerDestination(
          icon: Icon(itemVal.icon),
          label: Text(itemVal.title),
        )),

      ]
    );
  }
}