import 'package:flutter/material.dart';

class san extends StatelessWidget {
  const san({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(
      leading: Icon(Icons.menu),
      title: Center(
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
                image: AssetImage("assets/profile.jpeg"),fit: BoxFit.fill),
          ),
          ),
      ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(Icons.person),
            ),
          ],
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(0),
                image: DecorationImage(image: AssetImage("assets/gtimg2.jpeg"),fit: BoxFit.fill)
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                              decoration: InputDecoration(
                              icon: Icon(Icons.person),
                              hintText: "User name",
                              border: OutlineInputBorder(),
                  )
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.key),
                      hintText: "Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(onPressed: (){}, child: Text("login")),
                ),
           ]
            ),
          ),
          Row(
            children: [
              Container(
                height: 200,
                width: 200,
                child: Image.asset("assets/chrome.png"),
              ),
              Column(
                children: [
                  Container(
                    width: 150,
                    child: TextFormField(
                        decoration: InputDecoration(
                      icon: Icon(Icons.numbers),
                      hintText: "phone no",
                      border: OutlineInputBorder(),
                    )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ElevatedButton(onPressed: (){}, child: Text("ok")),
                  ),
            ],
          ),


        ],
      ),
      ]
    ),
    );

  }
}





