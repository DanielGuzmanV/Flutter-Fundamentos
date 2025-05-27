
import 'package:basic_flutter/presentation/screens/aristidev/components/menu/menu_items.dart';
import 'package:flutter/material.dart';

class BodyComponents extends StatelessWidget {
  const BodyComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componetns'),
      ),

      body: ListView.builder(
        itemCount: appComponents.length,
        itemBuilder: (context, index) {
          final componentItems = appComponents[index];
      
          return ListTile(
            leading: Icon(componentItems.icon),
      
            title: Text(componentItems.title),
            subtitle: Text(componentItems.subtitle),
      
            onTap: () {
              
            },
          );
        },
      ),
    );
  }
}








