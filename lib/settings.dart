import 'package:flutter/material.dart';

class run extends StatefulWidget {
  const run({super.key});

  @override
  State<run> createState() => _runState();
}

class _runState extends State<run> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)
            ),
        ),
            leading: Icon(Icons.arrow_back_ios),
            title:Text("Menu",style: TextStyle(color: Colors.black,
            fontSize: 35,fontWeight: FontWeight.bold)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.search,size: 35,color:Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(right:10),
              child: Icon(Icons.settings,size: 35,color:Colors.black),
            ),

        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25,left: 20,right: 20),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                trailing: Icon(Icons.keyboard_arrow_right_sharp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,left: 20,right: 20),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.groups),
                title: Text("Groups"),
                trailing: Icon(Icons.keyboard_arrow_right_sharp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,left: 20,right: 20),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.save_alt),
                title: Text("Downloads"),
                trailing: Icon(Icons.keyboard_arrow_right_sharp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,left: 20,right: 20),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.notifications_active),
                title: Text("Notifications"),
                trailing: Icon(Icons.keyboard_arrow_right_sharp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,left: 20,right: 20),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.event),
                title: Text("Events"),
                trailing: Icon(Icons.keyboard_arrow_right_sharp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,left: 20,right: 20),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.monetization_on_outlined),
                title: Text("Payments"),
                trailing: Icon(Icons.keyboard_arrow_right_sharp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,left: 20,right: 20),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.privacy_tip),
                title: Text("Settings @ privacy"),
                trailing: Icon(Icons.keyboard_arrow_right_sharp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,left: 20,right: 20),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.help),
                title: Text("Help & support"),
                trailing: Icon(Icons.keyboard_arrow_right_sharp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: SizedBox(
              height:50,
              width:200,
              child: ElevatedButton(onPressed: (){}, child:
              Text("Logout",style: TextStyle(color: Colors.blueAccent,
                  fontSize: 20,fontWeight: FontWeight.bold) ,)
              ),
            ),
          ),
        ],
      ),

    );
  }
}
