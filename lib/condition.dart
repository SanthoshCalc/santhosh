import 'package:flutter/material.dart';
class condition extends StatefulWidget {
  const condition({super.key});

  @override
  State<condition> createState() => _conditionState();
}

class _conditionState extends State<condition> {
  bool isTrue=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          isTrue?ElevatedButton(onPressed: (){
            setState(() {
              isTrue=false;
            });
          }, child: Text("Follow"))
              :ElevatedButton(onPressed: (){
                setState(() {
                  isTrue=true;
                });

          }, child: Text("Follwing"))

        ],

      ),
    );
  }
}
