import 'package:example/src/wired_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wired/flutter_wired.dart';

class WiredCheckboxExample extends StatelessWidget {
  final String title;
  const WiredCheckboxExample({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WiredText(
          title,
          fontSize: 20.0,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WiredCheckbox(
              value: false,
              onChanged: (value) {},
            ),
            const SizedBox(height: 50.0),
            Row(
              children: [
                WiredCheckbox(
                  value: true,
                  onChanged: (value) {},
                ),
                const SizedBox(width: 5.0),
                const WiredText('Terms & Privacy'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
