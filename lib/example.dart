import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:untitled/settings.dart';

import 'imagescreen.dart';
class sample extends StatefulWidget {
  const sample({super.key});

  @override
  State<sample> createState() => _sampleState();
}

class _sampleState extends State<sample> {
  List pages=[
    run(),
    lan(),
    lan(),
  ];
  int currentindex=0;
  void ontap(index){
    setState(() {
      currentindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.abc),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "setting"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "setting"),
        ],
        onTap: ontap,
      ),
    );
  }
}
