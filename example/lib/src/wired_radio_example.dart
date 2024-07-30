import 'package:flutter/material.dart';
import 'package:flutter_wired/flutter_wired.dart';

import 'wired_text.dart';

class WiredRadioExample extends StatefulWidget {
  final String title;
  const WiredRadioExample({super.key, required this.title});

  @override
  State<WiredRadioExample> createState() => _WiredRadioExampleState();
}

class _WiredRadioExampleState extends State<WiredRadioExample> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WiredText(
          widget.title,
          fontSize: 20.0,
        ),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 15.0),
          ListTile(
            title: const Text('Lafayette'),
            leading: WiredRadio<SingingCharacter>(
              value: SingingCharacter.lafayette,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });

                return true;
              },
            ),
          ),
          ListTile(
            title: const Text('Thomas Jefferson'),
            leading: WiredRadio<SingingCharacter>(
              value: SingingCharacter.jefferson,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });

                return true;
              },
            ),
          ),
        ],
      ),
    );
  }
}

enum SingingCharacter { lafayette, jefferson }
