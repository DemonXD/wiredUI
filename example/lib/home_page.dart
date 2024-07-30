import 'package:flutter/material.dart';

import 'demos.dart';
import 'src/wired_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const WiredText(
        'Flutter flutter_wired example',
        fontSize: 20.0,
      )),
      body: const DemoList(),
    );
  }
}

class DemoList extends StatelessWidget {
  const DemoList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.separated(
        separatorBuilder: (context, position) => Container(
          color: Theme.of(context).cardColor,
          child: const Divider(
            indent: 64,
            thickness: 1,
            height: 4,
          ),
        ),
        itemCount: demos.length,
        itemBuilder: (context, position) => DemoRow(demo: demos[position]),
      ),
    );
  }
}

class DemoRow extends StatelessWidget {
  final Demo demo;

  const DemoRow({super.key, required this.demo});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).cardColor,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        title: WiredText(
          demo.name,
          fontSize: 20.0,
        ),
        dense: false,
        subtitle: WiredText(
          demo.description,
          fontSize: 16.0,
        ),
        leading: SizedBox(
          width: 42,
          height: 42,
          child: demo.icon,
        ),
        onTap: () => Navigator.push<MaterialPageRoute>(
          context,
          MaterialPageRoute(
            builder: demo.buildPage,
          ),
        ),
      ),
    );
  }
}
