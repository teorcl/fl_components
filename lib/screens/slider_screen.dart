import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _isChecked = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( 
        title: const Text('Slider && Checks'),
      ),
      body: Column(
        children: [
      
          Slider.adaptive(
            min: 50,
            max: 400,
            divisions: 10,
            activeColor: AppTheme.primary,
            value: _sliderValue, 
            onChanged: _isChecked ? (value) {
              _sliderValue = value;
              setState(() {});
            } : null
          ),

          // Checkbox(
          //   value: _isChecked, 
          //   onChanged: (value) {
          //     _isChecked = value ?? true;
          //     setState(() {});
          //    },
          // ),

          // CheckboxListTile(
          //   title: const Text('Habilitar Slider'),
          //   activeColor: AppTheme.primary,
          //   value: _isChecked, 
          //   onChanged: (value) { 
          //     _isChecked = value ?? true;
          //     setState(() { });
          //   },
          // ),

          // Switch(
          //   activeColor: AppTheme.primary,
          //   value: _isChecked,
          //   onChanged: (value) => setState(() {
          //     _isChecked = value ;
          //   })
          // ),
      
          SwitchListTile.adaptive(
            title: const Text('Habilitar Slider'),
            activeColor: AppTheme.primary,
            value: _isChecked, 
            onChanged: (value) => setState(() {_isChecked = value ;})
          ),

          const AboutListTile(),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://www.pngmart.com/files/3/Dragon-Ball-Goku-PNG-Transparent-Image.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),

                
        ],
      ),
    );
  }
}