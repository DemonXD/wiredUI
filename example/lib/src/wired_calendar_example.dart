import 'package:flutter/material.dart';
import 'package:flutter_wired/flutter_wired.dart';

import 'wired_text.dart';

class WiredCalendarExample extends StatefulWidget {
  final String title;
  const WiredCalendarExample({super.key, required this.title});

  @override
  State<WiredCalendarExample> createState() => _WiredCalendarExampleState();
}

class _WiredCalendarExampleState extends State<WiredCalendarExample> {
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
        color: Colors.grey.shade200,
        padding: const EdgeInsets.all(15.0),
        height: 460.0,
        child: WiredCalendar(
          selected: '20210722',
          onSelected: (value) {},
        ),
      ),
    );
  }
}
