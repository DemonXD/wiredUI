import 'package:flutter/material.dart';
import 'package:flutter_wired/flutter_wired.dart';

import 'wired_text.dart';

class WiredCardExample extends StatelessWidget {
  final String title;
  const WiredCardExample({super.key, required this.title});

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
          const SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: WiredCard(
              height: 150.0,
              fill: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.album),
                    title: WiredText('The Enchanted Nightingale'),
                    subtitle: WiredText(
                        'Music by Julie Gable. Lyrics by Sidney Stein.'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      WiredButton(
                        child: const WiredText('BUY TICKETS'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                      WiredButton(
                        child: const WiredText('LISTEN'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30.0),
          Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.blue.shade100,
            child: WiredCard(
              fill: true,
              height: 100.0,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {},
                child: const SizedBox(
                  width: 300,
                  height: 100,
                  child: WiredText('A card that can be tapped'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
