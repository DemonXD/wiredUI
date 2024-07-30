import 'package:example/src/wired_card_example.dart';
import 'package:example/src/wired_checkbox_example.dart';
import 'package:example/src/wired_combo_example.dart';
import 'package:example/src/wired_dialog_example.dart';
import 'package:example/src/wired_divider_example.dart';
import 'package:flutter/material.dart';
import 'src/wired_button_example.dart';
import 'src/wired_calendar_example.dart';
import 'src/wired_input_example.dart';
import 'src/wired_progress_example.dart';
import 'src/wired_radio_example.dart';
import 'src/wired_slider_example.dart';
import 'src/wired_toggle_example.dart';

const String handWriting1 = 'Shadows Into Light';
const String handWriting2 = 'Architects Daughter';

final List<Demo> demos = [
  NormalDemo(
    'Wired button example',
    'Wired button',
    (_) => const WiredButtonExample(title: 'Wired button example'),
    const Icon(Icons.touch_app, size: 36),
  ),
  NormalDemo(
    'Wired card example',
    'Wired card',
    (_) => const WiredCardExample(title: 'Wired card'),
    const Icon(Icons.dashboard, size: 36),
  ),
  NormalDemo(
    'Wired checkbox example',
    'Wired checkbox',
    (_) => const WiredCheckboxExample(title: 'Wired checkbox'),
    const Icon(Icons.check_box, size: 36),
  ),
  NormalDemo(
    'Wired combo example',
    'Wired combo',
    (_) => const WiredComboExample(title: 'Wired combo'),
    const Icon(Icons.arrow_drop_down, size: 36),
  ),
  NormalDemo(
    'Wired dialog example',
    'Wired dialog',
    (_) => const WiredDialogExample(title: 'Wired dialog'),
    const Icon(Icons.open_in_new, size: 36),
  ),
  NormalDemo(
    'Wired divider example',
    'Wired divider',
    (_) => const WiredDividerExample(title: 'Wired divider'),
    const Icon(Icons.horizontal_split, size: 36),
  ),
  NormalDemo(
    'Wired input example',
    'Wired input',
    (_) => const WiredInputExample(title: 'Wired input'),
    const Icon(Icons.keyboard, size: 36),
  ),
  NormalDemo(
    'Wired radio example',
    'Wired radio',
    (_) => const WiredRadioExample(title: 'Wired radio'),
    const Icon(Icons.radio_button_checked, size: 36),
  ),
  NormalDemo(
    'Wired slider example',
    'Wired slider',
    (_) => const WiredSliderExample(title: 'Wired slider'),
    const Icon(Icons.linear_scale, size: 36),
  ),
  NormalDemo(
    'Wired toggle example',
    'Wired toggle',
    (_) => const WiredToggleExample(title: 'Wired toggle'),
    const Icon(Icons.toggle_on, size: 36),
  ),
  NormalDemo(
    'Wired progress example',
    'Wired progress',
    (_) => const WiredProgressExample(title: 'Wired progress'),
    const Icon(Icons.portrait, size: 36),
  ),
  NormalDemo(
    'Wired calendar example',
    'Wired calendar',
    (_) => const WiredCalendarExample(title: 'Wired calendar'),
    const Icon(Icons.calendar_today, size: 36),
  ),
];

abstract class Demo {
  final String name;
  final String description;
  final Widget icon;

  Demo(this.name, this.description, this.icon, {Key? key});

  Widget buildPage(BuildContext context);
}

class NormalDemo extends Demo {
  final WidgetBuilder builder;
  NormalDemo(String name, String description, this.builder, Widget icon)
      : super(name, description, icon);

  @override
  Widget buildPage(BuildContext context) {
    return builder(context);
  }
}
