import 'package:flutter/material.dart';

class youtube extends StatelessWidget {
  const youtube({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.macro_off,size: 35,color: Colors.cyan,),
        backgroundColor: Colors.redAccent,
        title: Text("Youtube",style: TextStyle(color: Colors.cyan,fontSize: 35,fontWeight: FontWeight.normal),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(Icons.search,),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(Icons.subscriptions_rounded),
          )
        ],
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
               icon: Icon(Icons.person),
                hintText: "Enter name",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(onPressed: (){}, child: Text("Home")),
         Container(
           height: 200,
           width: 300,
           //color: Colors.cyan,
           decoration: BoxDecoration(
             color: Colors.cyan,
             border: Border.all(),
             //borderRadius: BorderRadius.circular(35),
             image: DecorationImage(
                 image: AssetImage("assets/chrome.png"),
               fit: BoxFit.fill,
             ),
             shape: BoxShape.circle

           ),
           child: Center(child: Text("ok")),
         ),
        ],
      ),
    );
  }
}
