import 'package:flutter/material.dart';
import 'package:flutter_wired/flutter_wired.dart';

import 'wired_text.dart';

class WiredSliderExample extends StatefulWidget {
  final String title;
  const WiredSliderExample({super.key, required this.title});

  @override
  State<WiredSliderExample> createState() => _WiredSliderExampleState();
}

class _WiredSliderExampleState extends State<WiredSliderExample> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WiredText(
          widget.title,
          fontSize: 20.0,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(25.0),
        height: 200.0,
        child: WiredSlider(
          value: _currentSliderValue,
          min: 0,
          max: 100,
          divisions: 5,
          label: _currentSliderValue.round().toString(),
          onChanged: (double value) {
            setState(() {
              _currentSliderValue = value;
            });
            return true;
          },
        ),
      ),
    );
  }
}
