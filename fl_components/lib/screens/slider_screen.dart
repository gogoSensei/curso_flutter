import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double valueSlider = 100;
  bool _sliderEnbable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders and checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: valueSlider,
            onChanged: _sliderEnbable
                ? (value) {
                    setState(() {
                      valueSlider = value;
                    });
                  }
                : null,
          ),
          Checkbox(
            value: _sliderEnbable,
            onChanged: (value) {
              setState(() {
                _sliderEnbable = value ?? true;
              });
            },
          ),
          Switch(
            value: _sliderEnbable,
            onChanged: (value) => setState(
              () {
                _sliderEnbable = value;
              },
            ),
          ),
          CheckboxListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnbable,
            onChanged: (value) => setState(
              () {
                _sliderEnbable = value ?? true;
              },
            ),
          ),
          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnbable,
            onChanged: (value) => setState(
              () {
                _sliderEnbable = value;
              },
            ),
          ),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                width: valueSlider,
                fit: BoxFit.contain,
                image: const NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Mario_Series_Logo.svg/640px-Mario_Series_Logo.svg.png',
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
