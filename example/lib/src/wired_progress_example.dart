import 'package:flutter/material.dart';
import 'package:flutter_wired/flutter_wired.dart';

import 'wired_text.dart';

class WiredProgressExample extends StatefulWidget {
  final String title;
  const WiredProgressExample({super.key, required this.title});

  @override
  State<WiredProgressExample> createState() => _WiredProgressExampleState();
}

class _WiredProgressExampleState extends State<WiredProgressExample>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final controller1 = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    final controller2 = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: WiredText(
          widget.title,
          fontSize: 20.0,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WiredProgress(controller: controller1, value: 0.5),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ..._example(controller1),
              ],
            ),
            const SizedBox(height: 50.0),
            WiredProgress(controller: controller2),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ..._example(controller2),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _example(AnimationController controller) {
    return [
      WiredButton(
        child: const Text('Start'),
        onPressed: () {
          controller.forward();
        },
      ),
      const SizedBox(width: 20.0),
      WiredButton(
        child: const Text('Stop'),
        onPressed: () {
          controller.stop();
        },
      ),
      const SizedBox(width: 20.0),
      WiredButton(
        child: const Text('Reset'),
        onPressed: () {
          controller.reset();
        },
      ),
    ];
  }
}
