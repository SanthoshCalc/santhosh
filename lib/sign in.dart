import 'package:flutter/material.dart';

class signin extends StatelessWidget {
  const signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/profile.jpeg"),
        backgroundColor: Colors.grey,
        title: Center(child: Text("Chrome")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.circle),


          ),

        ],

      ),
      body:Column(
        children: [
          TextFormField(),
          TextFormField(),
          Container(
              height: 400,
              width: 400,
              child: Center(child: Image.asset("assets/chrome.png",))
          ),
          ElevatedButton(onPressed: (){}, child: Text("sigin")),
        ],
      ),
    );
  }
}

