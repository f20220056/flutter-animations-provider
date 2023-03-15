import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:new1/theme.dart';
import 'package:provider/provider.dart';

class TablePage extends StatefulWidget {
  const TablePage({super.key});

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
     final provider = Provider.of<ThemeNotifier>(context);
    return Scaffold(appBar: AppBar(
      title: Text('BMI Chart'),
      actions: [
        IconButton(onPressed: () {provider.toggleTheme();}, icon: Icon(Icons.mode_night))
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
    ),
    body: Center(child: Image.network('https://www.builtlean.com/wp-content/uploads/2013/06/Bmi-chart-1.jpg')),);
  }
}