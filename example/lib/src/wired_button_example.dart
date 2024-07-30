import 'package:example/src/wired_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wired/flutter_wired.dart';

class WiredButtonExample extends StatelessWidget {
  final String title;
  const WiredButtonExample({super.key, required this.title});

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
            WiredButton(
              child: const WiredText('Wired Button'),
              onPressed: () {},
            ),
            const SizedBox(height: 50.0),
            WiredButton(
              child: const WiredText('Submit'),
              onPressed: () {},
            ),
            const SizedBox(height: 50.0),
            WiredButton(
              child: const WiredText('Cancel'),
              onPressed: () {},
            ),
            const SizedBox(height: 50.0),
            WiredButton(
              child: const WiredText('Long text button ...... hah'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
