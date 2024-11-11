import 'package:flutter/material.dart';

class gt extends StatelessWidget {
  const gt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset("assets/profile.jpeg"),
      ),
        title: Center(
          child: Text("Glacier Technology",style: TextStyle(color: Colors.green,
              fontSize: 25,fontWeight: FontWeight.bold),),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(Icons.menu),
          ),
        ],
      ),

      body:Column(
        children: [
          SizedBox(
            height: 50,
            width:50,
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(),
                borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: AssetImage("assets/gtimg2.jpeg"),fit: BoxFit.fill)
            ),
            child: Center(child: Text("CLICK")),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                  hintText: "User name",
                  border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration:  InputDecoration(
                icon: Icon(Icons.key),
                hintText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ElevatedButton(onPressed: (){}, child: Text("login")),
          ),

        ],
      ) ,
    );
  }
}

