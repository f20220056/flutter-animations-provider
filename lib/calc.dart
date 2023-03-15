import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:new1/theme.dart';
import 'package:provider/provider.dart';

import 'menu.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({super.key});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  final _drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeNotifier>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
      actions: [
        IconButton(
            onPressed: () {
              provider.toggleTheme();
            },
            icon: Icon(Icons.mode_night))
      ],
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              ZoomDrawer.of(context)!.toggle.call();
              print("Menu button clicked");
            },
          );
        },
      ),
    ));
  }
}
