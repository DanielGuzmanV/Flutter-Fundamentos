import 'package:basic_flutter/presentation/screens/aristidev/layouts/menu/menu_items.dart';
import 'package:flutter/material.dart';

class BodyLayouts extends StatelessWidget {
  const BodyLayouts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appLayouts.length,
      itemBuilder: (context, index) {
        final layoutItems = appLayouts[index];

        return ListTile(
          leading: Icon(layoutItems.icon),

          title: Text(layoutItems.title),
          subtitle: Text(layoutItems.subtitle),

          onTap: () {
            
          },
        );
      },
    );
  }
}






