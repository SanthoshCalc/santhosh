import 'package:flutter/material.dart';
import 'package:untitled/Amazon.dart';
import 'package:untitled/imagescreen.dart';
import 'package:untitled/instagram.dart';
import 'package:untitled/product.dart';
import 'package:untitled/settings.dart';
import 'package:untitled/spotify.dart';

import 'login valid.dart';

class bar extends StatefulWidget {
  const bar({super.key});

  @override
  State<bar> createState() => _barState();
}

class _barState extends State<bar> {

  int _index = 0 ;


  final screens = [
    insta(),
    run(),
    front(),
    song(),


  ];

  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color:Colors.black,),label: "Home",backgroundColor: Colors.black12),
          BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.black,),label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.mic,color: Colors.black,),label: "Amazon"),
          BottomNavigationBarItem(icon: Icon(Icons.music_note_outlined,color: Colors.black,),label: "Home"),


        ],
        currentIndex: _index,
        onTap: tap,
      ),


    );
  }
}
