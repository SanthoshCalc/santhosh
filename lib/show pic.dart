import 'package:flutter/material.dart';

class pic extends StatefulWidget {
  const pic({super.key});

  @override
  State<pic> createState() => _picState();
}

class _picState extends State<pic> {
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Visibility(
              visible: visible,
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image:  AssetImage("assets/cat.jpeg"),fit:BoxFit.fill,
                  ) ,
                ),
              ),
            ),
          ),
          Center(child: ElevatedButton(onPressed: (){
            setState(() {
              visible = !visible;
            });
          }, child: Text("click"))),

        ],
      ),

    );
  }
}
