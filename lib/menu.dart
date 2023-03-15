import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new1/calc.dart';
import 'package:new1/main.dart';
import 'package:new1/table.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 124, 188, 241),
      body: SafeArea(
        child: Column(
          children: [
            IconButton(
                onPressed: () {
                  isCalcPage = true;
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Home()));
                },
                icon: Icon(Icons.calculate_outlined)),
            IconButton(
                onPressed: () {
                  isCalcPage = false;
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Home()));
                },
                icon: Icon(Icons.table_chart))
          ],
        ),
      ),
    );
  }
}
