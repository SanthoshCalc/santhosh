import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class lis extends StatefulWidget {
  const lis({super.key});

  @override
  State<lis> createState() => _lisState();
}

class _lisState extends State<lis> {

  TextEditingController li = TextEditingController();
  TextEditingController st = TextEditingController();
  List s =[ ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text("List",style:
        TextStyle(color: Colors.white,fontSize: 30),)),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: li,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.search),
                labelText: "Search",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 40,
            width: 150,
            child: ElevatedButton(onPressed: (){
              setState(() {
                s.add(li.text);
                print(s);
              });
            },
                child: Text("Enter",style: TextStyle(color: Colors.black,fontSize: 20),)),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:20,left: 20),
                child: ElevatedButton(onPressed: (){
                  setState(() {
                   showModalBottomSheet(context: context, builder: (context){
                     s.sort();
                     print(s);

                     return Container(
                       height: 300,
                       width: double.infinity,
                       child: Center(child: Text("Ascending value=${s}")),
                     );
                   });
                  });
                }, child: Text("Ascending value")),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,  left: 60),
                child: ElevatedButton(onPressed: (){
                  setState(() {
                    showModalBottomSheet(context: context, builder: (context){
                      s.sort();
                      print(s);
                      return Container(
                        height: 300,
                        width: double.infinity,
                        child: Center(child: Text("Descending value=${s.reversed}")),
                      );
                    });
                  });
                }, child: Text("Descending value")),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 20),
                child: ElevatedButton(onPressed: (){
                  setState(() {
                    showModalBottomSheet(context: context, builder: (context){
                      s.sort();
                      print(s);
                      var data = [4, 89, 64, 9, 37, 7];
                      data.sort();
                      print(data);

                      return Container(
                        height: 300,
                        width: double.infinity,
                        child: Center(child: Text("Maximum value=${s.last}")),
                      );
                    });
                  });
                }, child: Text("largest value")),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,  left: 100),
                child: ElevatedButton(onPressed: (){
                  setState(() {
                    showModalBottomSheet(context: context, builder: (context){
                      s.sort();
                      print(s);
                      var data = [4, 89, 64, 9, 37, 7];
                      data.sort();
                      print(data.reversed);

                      return Container(
                        height: 300,
                        width: double.infinity,
                        child: Center(child: Text("Minimum value=${s.first}")),
                      );
                    });
                  });
                }, child: Text("Smallest value")),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20,left:20),
                child: ElevatedButton(onPressed: (){
                  setState(() {
                    showModalBottomSheet(context: context, builder: (context){
                      s.sort();
                      print(s);
                      return Container(
                        height: 300,
                        width: double.infinity,
                        child: Center(child: Text("Greater than >5=${s.last}")),
                      );
                    });
                  });
                }, child: Text("Greater than >5 value")),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 10),
                child: ElevatedButton(onPressed: (){
                  setState(() {
                    showModalBottomSheet(context: context, builder: (context){
                      print(s);
                      List<dynamic> lessThanFive = s.where((number) => number < 5).toList();

                      print(lessThanFive);
                      return Container(
                        height: 300,
                        width: double.infinity,
                        child: Center(child: Text("Less than <5 value=${lessThanFive}")),
                      );
                    });
                  });
                }, child: Text("Less than <5  value")),
              ),
            ],
          ),

          Container(
            height: 520,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: ListView.builder(itemCount:s.length,
                scrollDirection:Axis.vertical,itemBuilder: (BuildContext context,int index){
              return Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>edi(data: s[index],)));
                    },
                    child: Container(
                      height: 50,
                      width: 320,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all()
                      ),
                      child: Center(child: Text(s[index],style: TextStyle(color: Colors.black,fontSize: 20),)),
                    ),
                  ),
                  IconButton(onPressed: (){
                    showDialog(context: context, builder: (BuildContext context){
                      return AlertDialog(
                        title: Text("Edit"),
                        content: TextFormField(controller: st),
                        actions: [
                          ElevatedButton(onPressed: (){
                            setState(() {
                              s[index]=st.text;
                              Navigator.pop(context);
                            });
                          }, child: Text("update")),
                        ],

                      );
                    });
                  },
                    icon: Icon(Icons.edit),
                  ),
                  IconButton(onPressed: () {
                    setState(() {
                      s.removeAt(index);
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
  editEntry(int Index){}
}

class edi extends StatefulWidget {
  String?data;
  edi({super.key , this.data});
  @override
  State<edi> createState() => _ediState();
}

class _ediState extends State<edi> {
  TextEditingController li = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("update list "),
      ),
      body:
      Center(
        child: Text(widget.data!),
      ),
    );
  }
}
