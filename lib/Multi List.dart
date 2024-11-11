import 'package:flutter/material.dart';

class multi extends StatefulWidget {
  const multi({super.key});

  @override
  State<multi> createState() => _multiState();
}

class _multiState extends State<multi> {

  TextEditingController m = TextEditingController();
  TextEditingController u = TextEditingController();
  TextEditingController l = TextEditingController();

  List t= [];
  List i = [];
  List r= [];

  void add(){
    setState(() {
      if(m.text.isNotEmpty&&u.text.isNotEmpty&&l.text.isNotEmpty){
        t.add(m.text);
        i.add(u.text);
        r.add(l.text);

      };
    });
  }


  void editEntry(int index) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => new1(index: index, saa: t[index], sab: i[index], sac: r[index])),
    );
    if(result!= null){
      setState(() {
        t[result['index']] = result['saa'];
        i[result['index']] = result['sab'];
        r[result['index']] = result['sac'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text("Multi List ",style: TextStyle(color: Colors.white,fontSize: 25),)) ,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15,left: 30,right: 30),
            child: TextField(
              controller: m,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: "Username",
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15,left: 30,right: 30),
            child: TextField(
              controller: u,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail_outline),
                  labelText: "Email ",
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15,left: 30,right: 30),
            child: TextField(
              controller: l,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.key_rounded),
                  labelText: "password",
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: ElevatedButton(onPressed: add, child: Text("Login")),
          ),
          Container(
            height: 520,
            decoration: BoxDecoration(
              color: Colors.white60,
            ),
            child: ListView.builder(itemCount:t.length,
                scrollDirection:Axis.vertical,itemBuilder: (BuildContext context,int index){
                  return Row(
                    children: [
                      Container(
                        height: 100,
                        width: 320,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(t[index]),
                            Text(i[index]),
                            Text(r[index]),
                          ],
                        ),

                      ),
                      IconButton(onPressed: ()=>editEntry(index),
                        icon: Icon(Icons.edit),
                      ),
                      IconButton(onPressed: () {
                        setState(() {
                          t.removeAt(index);
                          i.removeAt(index);
                          r.removeAt(index);
                        });
                      },
                        icon: Icon(Icons.delete),
                      ),


                    ],
                  );
                }),
          ),



        ],
      ),


    );
  }
}

class new1 extends StatefulWidget {
  int index;
  String saa;
  String sab;
  String sac;
   new1({required this.index,required this.saa,required this.sab,required this.sac ,super.key});


  @override

  State<new1> createState() => _new1State();
}

class _new1State extends State<new1> {

  TextEditingController zaq = TextEditingController();
  TextEditingController zab = TextEditingController();
  TextEditingController zac = TextEditingController();



  @override
  void initState() {
    zaq.text = widget.saa;
    zab.text = widget.sab;
    zac.text = widget.sac;

  }
  void saveChanges(){
    Navigator.pop(context,{
      'index':widget.index,
      'saa' : zaq.text,
      'sab' : zab.text,
      'sac' : zac.text,
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
            child: TextField(
              controller: zaq,
              decoration: InputDecoration(
                labelText: "Username",
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
            child: TextField(
              controller: zab,
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
            child: TextField(
              controller: zac,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(onPressed: saveChanges, child: Text("Update")),
          ),
        ],
      ),

    );
  }
}

