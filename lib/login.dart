import 'package:flutter/material.dart';

class log extends StatelessWidget {
  const log({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        leading: Icon(Icons.search),
        title: Center(child: Text("Phonepay")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.message),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ) ,
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Image.asset("assets/phonepay.png"),
          ElevatedButton(onPressed: (){

          }, child: Center(child: Text("login"))),

        ],
      ),
    );
  }
}
