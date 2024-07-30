import 'package:flutter/material.dart';
import 'package:flutter_wired/flutter_wired.dart';

import 'wired_text.dart';

class WiredToggleExample extends StatelessWidget {
  final String title;
  const WiredToggleExample({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    bool firstVal = false;
    bool secondVal = true;

    return Scaffold(
      appBar: AppBar(
        title: WiredText(
          title,
          fontSize: 20.0,
        ),
      ),
      body: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            WiredToggle(
              value: firstVal,
              onChange: (val) {
                return false;
              },
            ),
            const SizedBox(height: 50.0),
            WiredToggle(
              value: secondVal,
              onChange: (val) {
                return true;
              },
            ),
          ],
        ),
      ),
    );
  }
}
