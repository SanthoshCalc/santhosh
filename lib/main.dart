import 'package:flutter/material.dart';
import 'package:untitled/Amazon.dart';
import 'package:untitled/BMI%20Cal.dart';
import 'package:untitled/Calculator.dart';
import 'package:untitled/GST%20Cal.dart';
import 'package:untitled/List.dart';
import 'package:untitled/Multi%20List.dart';
import 'package:untitled/Take01.dart';
import 'package:untitled/Take02.dart';
import 'package:untitled/Take03.dart';
import 'package:untitled/bottom.dart';
import 'package:untitled/copy.dart';
import 'package:untitled/cort.dart';
import 'package:untitled/facebook.dart';
import 'package:untitled/imagescreen.dart';
import 'package:untitled/instagram.dart';
import 'package:untitled/login.dart';
import 'package:untitled/product.dart';
import 'package:untitled/sample.dart';
import 'package:untitled/settings.dart';
import 'package:untitled/show%20on.dart';
import 'package:untitled/show%20pic.dart';
import 'package:untitled/sign%20in.dart';
import 'package:untitled/spotify.dart';
import 'package:untitled/valid.dart';
import 'package:untitled/web.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'condition.dart';
import 'example.dart';
import 'login valid.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp ({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:front(),
    );
  }

}


