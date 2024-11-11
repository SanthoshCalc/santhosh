import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:untitled/valid.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {

  TextEditingController a = TextEditingController();
  String num1="";
  String num2="";
  String oper="";
  bool click=false;

  void deleteLastCharacter(){
   setState(() {
     if(click == true && num2.isNotEmpty){
       num2 = num2.substring(0,num2.length - 1);
       a.text=num2;
     }
     else if(click == false && num1.isNotEmpty){
       num1 = num1.substring(0,num1.length - 1);
       a.text=num1;}
   });
  }

  void cleartext(){
setState(() {
  num1="";
  num2="";
  oper="";
  click = false;
  a. clear();

});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator",style: TextStyle(fontSize: 30)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: TextFormField(
              controller: a,
              decoration: InputDecoration(
                hintText: "0",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                  cleartext();
                  });
                 }, child: Text("AC",style: TextStyle(color: Colors.orange))),
                ElevatedButton(onPressed: (){
                  deleteLastCharacter();

                }, child: Text("C ",style: TextStyle(color: Colors.orange))),
                ElevatedButton(onPressed: (
                    ){
                  setState(() {
                    oper="%";
                    a.text="%";
                    click=true;
                  });
                }, child: Text("%",style: TextStyle(color: Colors.orange))),
                ElevatedButton(onPressed: (){
                  setState(() {
                    oper="/";
                    a.text="/";
                    click=true;
                  });
                }, child: Text("/",style: TextStyle(color: Colors.orange))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                  double xx = double.parse(num1);
                  double yy = sqrt(xx);
                  print(yy);
                  a.text = yy.toString();
                  });
                }, child: Text(" √ ",style: TextStyle(color: Colors.orange))),
                ElevatedButton(onPressed: (){
                  setState(() {
                    oper="^";
                    a.text="^";
                    click=true;
                  });
                }, child: Text(" ^ ",style: TextStyle(color: Colors.orange))),
                ElevatedButton(onPressed: (){
                  setState(() {
                    oper="+/-";
                    a.text="+/-";
                    click=true;
                  });
                }, child: Text("+/-",style: TextStyle(color: Colors.orange))),
                ElevatedButton(onPressed: (){}, child: Icon(Icons.cancel_presentation,size: 20,color: Colors.orange,)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                    if(click==true){
                      num2+="7";
                      a.text=num2;
                    }
                    else{
                      num1+="7";
                      a.text=num1;
                    }
                }, child: Text(" 7 ")),
                ElevatedButton(onPressed: (){
                  if(click==true){
                    num2+="8";
                    a.text=num2;
                  }
                  else{
                    num1+="8";
                    a.text=num1;
                  }
                }, child: Text(" 8 ")),
                ElevatedButton(onPressed: (){
                  if (click==true){
                    num2+="9";
                    a.text=num2;
                  }
                  else{
                    num1+="9";
                    a.text=num1;
                  }
                }, child: Text(" 9 ")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    oper="*";
                    a.text="*";
                    click=true;
                  });
                }, child: Text(" * ",style: TextStyle(color: Colors.orange))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  if (click==true){
                    num2+="4";
                    a.text=num2;
                  }
                  else{
                    num1+="4";
                    a.text=num1;
                  }
                }, child: Text(" 4 ")),
                ElevatedButton(onPressed: (){
                  if (click==true){
                    num2+="5";
                    a.text=num2;
                  }
                  else{
                    num1+="5";
                    a.text=num1;
                  }
                }, child: Text(" 5 ")),
                ElevatedButton(onPressed: (){
                  if (click==true){
                    num2+="6";
                    a.text=num2;
                  }
                  else{
                    num1+="6";
                    a.text=num1;
                  }
                }, child: Text(" 6 ")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    oper="-";
                    a.text="-";
                    click=true;
                  });
                }, child: Text(" - ",style: TextStyle(color: Colors.orange))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  if (click==true){
                  num2+="1";
                  a.text=num2;
                }
                else{
                 num1+="1";
                  a.text=num1;
                }}, child: Text(" 1 ")),
                ElevatedButton(onPressed: (){
                  if (click==true){
                  num2+="2";
                  a.text=num2;
                }
                else{
                  num1+="2";
                  a.text=num1;
                }}, child: Text(" 2 ")),
                ElevatedButton(onPressed: (){
                  if (click==true){
                    num2+="3";
                    a.text=num2;
                  }
                  else{
                    num1+="3";
                    a.text=num1;
                  }
                }, child: Text(" 3 ")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    oper="+";
                    a.text="+";
                    click=true;
                  });
                }, child: Text(" + ",style: TextStyle(color: Colors.orange))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){}, child: Icon(Icons.change_circle,size: 15,)),
                ElevatedButton(onPressed: (){
                  setState(() {
                    a.text="0";
                  });
                }, child: Text(" 0 ")),
                ElevatedButton(onPressed: (){setState(() {
                  if (click==true){
                    num2+=".";
                    a.text=num2;
                  }
                  else{
                    num1+=".";
                    a.text=num1;
                  }
                });}, child: Text(" . ")),
                ElevatedButton(onPressed: (){
                  double x=double.parse(num1);
                  double y=double.parse(num2);
                  double z=0;
                  if(oper=="+"){
                    z=x+y;
                  }
                   if(oper=="-")
                    {
                      z=x-y;
                    }
                   if(oper=="*"){
                    z=x*y;
                  }
                   if(oper=="/"){
                    z=x/y;
                  }
                 if(oper=="%"){
                    z=x%y;
                  }
                  if(oper=="√"){
                   double result = double.parse(num1);
                   double x = sqrt(result);
                   print(x);

                  }

                  a.text=z.toString();
                  num1=a.text;
                  click=false;
                  num2="";
                }, child: Text(" = ",style: TextStyle(color: Colors.orange))),
              ],
            ),
          ),









        ],
      ),

    );
  }
}
