import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class ButtonViewBody extends StatelessWidget {
  const ButtonViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),

      child: Container(
        padding: const EdgeInsets.all(24),

        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Colors.blue, width: 2)),

          child: Wrap(
            spacing: 10,
            alignment: WrapAlignment.center,
            children: [

              // Tipo de botones en flutter:
              ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
              const ElevatedButton(onPressed: null, child: Text('Elevated Disable')),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_rounded),
                label: const Text('Elevated Icon')
              ),
              // =======================================================

              FilledButton(
                onPressed: (){}, 
                child: const Text('Filled')
              ),
              FilledButton.icon(
                onPressed: (){}, 
                label: const Text('Filled icon'),
                icon: const Icon(Icons.accessible_rounded),
              ),
              // =======================================================

              OutlinedButton(
                onPressed: (){
                  context.pop();
                },
                style: OutlinedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(0)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),

                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Image.network(
                      'https://media.tenor.com/_hVJonti3N8AAAAM/scooby.gif',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ),
              OutlinedButton.icon(
                onPressed: (){}, 
                label: const Text('Outline icon'),
                icon: const Icon(Icons.account_circle_outlined),
              ),
              // =======================================================

              TextButton(onPressed: (){}, child: const Text('Text Boton')),
              TextButton.icon(
                onPressed: (){}, 
                label: const Text('Text Boton icon'),
                icon: const Icon(Icons.work_outline_sharp),
              ),
              // =======================================================

              IconButton(onPressed: (){}, icon: const Icon(Icons.app_registration_rounded)),
              IconButton(
                onPressed: (){}, 
                icon: const Icon(Icons.app_registration_rounded),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.green),
                  foregroundColor: WidgetStateProperty.all(Colors.red)
                ),
              ),

              // Boton personalizado:
              const CustomButton()

            ],
          ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorsCustom = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),

      child: Material(
        color: colorsCustom.primary,
      
        child: InkWell(
          onTap: (){},
          
          child: const Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 10),
          
            child: Row(
              mainAxisSize: MainAxisSize.min,

              children: [
                Icon(Icons.star_outlined, color: Colors.white,),
                SizedBox(width: 8,),
                Text(
                  'Btn Custom',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ],
            ),
          
          ),
        ),
      ),
    );  
  }
}













