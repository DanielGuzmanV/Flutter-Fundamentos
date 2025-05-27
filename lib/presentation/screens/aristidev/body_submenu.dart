import 'package:go_router/go_router.dart';

import 'package:basic_flutter/config/submenu/submenu_items.dart';
import 'package:flutter/material.dart';

class BodyFlutter extends StatelessWidget {
  const BodyFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appSubMenuItems.length,
      itemBuilder: (context, index) {
        final subMenuItem = appSubMenuItems[index];
        return _CustomListTile(subMenuItem: subMenuItem);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final SubmenuItems subMenuItem;
  const _CustomListTile({
    required this.subMenuItem,
  });


  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(subMenuItem.icon),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.secondary),

      title: Text(subMenuItem.title),
      subtitle: Text(subMenuItem.subtitle),

      onTap: () {
        
      },

    );
  }
}


