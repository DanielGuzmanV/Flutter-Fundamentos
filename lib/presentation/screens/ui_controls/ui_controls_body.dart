import 'package:flutter/material.dart';

class UiControlsBody extends StatefulWidget {
  const UiControlsBody({super.key});

  @override
  State<UiControlsBody> createState() => _UiControlsBodyState();
}

enum EnunTransportation {auto, barco, avion, submarino}

class _UiControlsBodyState extends State<UiControlsBody> {

  bool isDeveloper = true;
  EnunTransportation selectTransportation = EnunTransportation.auto;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;


  String obtenerTextoTransporte(EnunTransportation value) {
    switch(value) {
      case EnunTransportation.auto:
        return 'Auto';
      case EnunTransportation.barco:
        return 'Barco';
      case EnunTransportation.avion:
        return 'Avion';
      case EnunTransportation.submarino:
        return 'Submarino';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [

        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper, 
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          })
        ),

        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text(obtenerTextoTransporte(selectTransportation)),
          children: [

            RadioListTile(
              title: const Text('Auto'),
              subtitle: const Text('Viajar por auto'),
              value: EnunTransportation.auto,
              groupValue: selectTransportation, // Podremos marcar la opciones seleccionada
              onChanged: (value) {
                return setState(() {
                  selectTransportation = EnunTransportation.auto;
                });
              },
            ),
            RadioListTile(
              title: const Text('Avion'),
              subtitle: const Text('Viajar por avion'),
              value: EnunTransportation.avion,
              groupValue: selectTransportation, // Podremos marcar la opciones seleccionada
              onChanged: (value) {
                return setState(() {
                  selectTransportation = EnunTransportation.avion;
                });
              },
            ),
            RadioListTile(
              title: const Text('Barco'),
              subtitle: const Text('Viajar por barco'),
              value: EnunTransportation.barco,
              groupValue: selectTransportation, // Podremos marcar la opciones seleccionada
              onChanged: (value) {
                return setState(() {
                  selectTransportation = EnunTransportation.barco;
                });
              },
            ),
            RadioListTile(
              title: const Text('Submarino'),
              subtitle: const Text('Viajar por submarino'),
              value: EnunTransportation.submarino,
              groupValue: selectTransportation, // Podremos marcar la opciones seleccionada
              onChanged: (value) {
                return setState(() {
                  selectTransportation = EnunTransportation.submarino;
                });
              },
            ),

          ],
        ),

        CheckboxListTile(
          title: const Text('Incluir desayuno?'),
          subtitle: const Text('Gratis'),
          value: wantsBreakfast, 
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),

        CheckboxListTile(
          title: const Text('Incluir almuerzo?'),
          subtitle: const Text('de pago'),
          value: wantsLunch, 
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),

        CheckboxListTile(
          title: const Text('Incluir cena?'),
          subtitle: const Text('de pago'),
          value: wantsDinner, 
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),




      ],
    );
  }
}