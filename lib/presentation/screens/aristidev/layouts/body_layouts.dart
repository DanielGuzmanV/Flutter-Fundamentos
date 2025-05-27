import 'package:basic_flutter/presentation/screens/aristidev/layouts/menu/menu_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BodyLayouts extends StatelessWidget {
  const BodyLayouts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text("Layouts"),
      ),
      body: ListView.builder(
        itemCount: appLayouts.length,
        itemBuilder: (context, index) {
          final layoutItems = appLayouts[index];
      
          return ListTile(
            leading: Icon(layoutItems.icon),
      
            title: Text(layoutItems.title),
            subtitle: Text(layoutItems.subtitle),
      
            onTap: () {
              context.push(layoutItems.link);
            },
          );
        },
      ),
    );
  }
}






