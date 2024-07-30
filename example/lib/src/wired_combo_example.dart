import 'package:example/src/wired_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wired/flutter_wired.dart';

class WiredComboExample extends StatelessWidget {
  final String title;
  const WiredComboExample({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WiredText(
          title,
          fontSize: 20.0,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: WiredCombo(
              value: 'One',
              items: ['One', 'Two', 'Free', 'Four']
                  .map<DropdownMenuItem<String>>((dynamic value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: WiredText(value),
                  ),
                );
              }).toList(),
              onChanged: (value) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: WiredCombo(
              value: 'Banana',
              items: ['Apple', 'Banana', 'Peach', 'Orange', 'Sandwich']
                  .map<DropdownMenuItem<String>>((dynamic value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: WiredText(value),
                  ),
                );
              }).toList(),
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
