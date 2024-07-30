import 'package:example/demos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wired/flutter_wired.dart';

import 'wired_text.dart';

class WiredInputExample extends StatelessWidget {
  final String title;
  const WiredInputExample({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller1 =
        TextEditingController(text: 'Hello wired input');
    final TextEditingController controller2 = TextEditingController();
    final TextEditingController controller3 = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: WiredText(
          title,
          fontSize: 20.0,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            WiredInput(
              controller: controller1,
              style: const TextStyle(
                fontFamily: handWriting2,
                fontSize: 18.0,
              ),
              labelText: 'Name',
              labelStyle: const TextStyle(
                fontFamily: handWriting2,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 15.0),
            WiredInput(
              controller: controller2,
              labelText: 'User Email',
              labelStyle: const TextStyle(
                fontFamily: handWriting2,
                fontSize: 18.0,
              ),
              style: const TextStyle(
                fontFamily: handWriting2,
              ),
              hintText: 'Please enter user email',
            ),
            const SizedBox(height: 15.0),
            WiredInput(
              controller: controller3,
              style: const TextStyle(
                fontFamily: handWriting2,
              ),
              hintText: 'Your age please!',
            ),
          ],
        ),
      ),
    );
  }
}
