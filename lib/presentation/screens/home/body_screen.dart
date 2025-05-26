import 'package:basic_flutter/config/menu/menu_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BodyScreen extends StatelessWidget {
  const BodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];

        return _CustomListTile(menuItem: menuItem);
    },);
  }
}

class _CustomListTile extends StatelessWidget {
  final MenuItems menuItem;
  const _CustomListTile({
    required this.menuItem,
  });


  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      // Iconos:
      leading: Icon(menuItem.icon, color: colors.primary,),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.secondary,),
      
      // Titulo y subtitulo:
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subtitle),

      // Navegacion:
      onTap: () {
        
        context.push(menuItem.link);

      },

    );
  }
}