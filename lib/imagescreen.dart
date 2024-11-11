import 'package:flutter/material.dart';
class lan extends StatelessWidget {
  const lan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Center(
            child: Text("facebook",style: TextStyle(color: Colors.blueAccent,
                fontSize:40,fontWeight: FontWeight.bold)),
          ),
      ),
      body: Center(
        child: Container(
          height: 400,
            width: 400,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/sis.jpeg"),fit: BoxFit.fill),
        ),
        ),
      ),
    );
  }
}