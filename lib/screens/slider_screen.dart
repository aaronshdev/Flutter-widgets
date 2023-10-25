import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _enable = true;

sliderFunction(value)  {
  _sliderValue =value;
  setState((){});
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: Column(children: [
        Slider(
          min: 50,
          max: 400,
          value: _sliderValue,
          activeColor: AppTheme.primary,
          onChanged: _enable ? (value) => sliderFunction(value):null,
        ),
        CheckboxListTile(
          value: _enable,
          activeColor: AppTheme.primary,
          title: const Text('Desabilitar slider'), 
          onChanged: (value) => setState(() {
          _enable = value?? true;
          })
        ),
        SwitchListTile(
          value: _enable,
          activeColor: AppTheme.primary,
          title: const Text('Desabilitar slider'), 
          onChanged: (value) => setState(() {
          _enable = value?? true;
          })
        ),
        AboutListTile(),
        // Checkbox(value: _enable, onChanged: ((value) {
        //   _enable = value?? true;
        //   setState(() {
             
        //   });
        // })),
        Expanded(
          child: SingleChildScrollView(
            child: Image(
              image: NetworkImage('https://static.wikia.nocookie.net/death-battle-fanon-wiki-en-espanol/images/3/3d/Luffy.png/revision/latest?cb=20190703070025&path-prefix=es'),
              fit: BoxFit.contain,
              width: _sliderValue,
              ),
          ),
        )
      ]),
    );
  }
}
