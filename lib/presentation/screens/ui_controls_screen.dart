import 'package:flutter/material.dart';

class UiControls extends StatelessWidget {
  const UiControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ui controls'),
      ),
      body: const _UiControlsWidget(),
    );
  }
}

class _UiControlsWidget extends StatefulWidget {
  const _UiControlsWidget();

  @override
  State<_UiControlsWidget> createState() => _UiControlsWidgetState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsWidgetState extends State<_UiControlsWidget> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text('Developer mode'),
            subtitle: const Text('Controles adicionales'),
            value: isDeveloper,
            onChanged: (value) => setState(() {
                  isDeveloper = !isDeveloper;
                })),

        ExpansionTile(
          title: const Text('Means transportation'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
                title: const Text('By Car'),
                subtitle: const Text('Travel to car'),
                value: Transportation.car,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.car;
                    })),
            RadioListTile(
                title: const Text('By Boat'),
                subtitle: const Text('Travel to Boat'),
                value: Transportation.boat,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.boat;
                    })),
            RadioListTile(
                title: const Text('By Plane'),
                subtitle: const Text('Travel to Plane'),
                value: Transportation.plane,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.plane;
                    })),
            RadioListTile(
                title: const Text('By Submarine'),
                subtitle: const Text('Travel to Submarine'),
                value: Transportation.submarine,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.submarine;
                    })),
          ],
        ),
        //check list tile
        CheckboxListTile(
          title: const Text('Do you want Breakfast?'),
          value: wantsBreakfast, 
          onChanged: (value)=> setState(() {
            wantsBreakfast = !wantsBreakfast;
          })
        ),
        CheckboxListTile(
          title: const Text('Do you want Lunch?'),
          value: wantsBreakfast, 
          onChanged: (value)=> setState(() {
            wantsBreakfast = !wantsBreakfast;
          })
        ),
        CheckboxListTile(
          title: const Text('Do you want Dinner?'),
          value: wantsBreakfast, 
          onChanged: (value)=> setState(() {
            wantsBreakfast = !wantsBreakfast;
          })
        ),
      ],
    );
  }
}
