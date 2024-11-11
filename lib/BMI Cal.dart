import 'package:flutter/material.dart';

class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}



class _bmiState extends State<bmi> {
  TextEditingController heightcontroller = TextEditingController();
   TextEditingController weightcontroller = TextEditingController();



  clearResult(){
    double bmiResult = 0.0;
   String weight = weightcontroller.text;
    String height = heightcontroller.text;
    double ht = double.parse(heightcontroller.text)/100;

    double bmi = double.parse(weightcontroller.text)/(ht*ht);
     bmiResult = bmi;
    setState(() {
      Color show = Colors.transparent;
      if (bmiResult < 19) {
        {
          show =   Colors.cyanAccent;
        }
      }
      else if (bmiResult >= 19 && bmiResult <=26) {
        {
          show = Colors.green;
        }
      }
      else if (bmiResult >= 26 && bmiResult <=31) {
        {
          show =  Colors.blue;
        }
      }
      else if (bmiResult >= 31 &&bmiResult <=35) {
        {
          show =  Colors.orange;
        }

      }
      else if (bmiResult >= 35) {
        {
          show = Colors.red;
        }

      }

      showDialog(
          context: context,
          builder : (BuildContext context){
            return AlertDialog(
              title: Container(
                color: show,
                  height: 100,
                  width: 200,
                  child: Column(
                    children: [
                     Text("${bmiResult}"),
                    ],
                  )),
            );

          }
      );
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
          ),
        ),
        title:
        Center(child: Text("BMI Calculator",style: TextStyle(color: Colors.white,fontSize: 30,),)),
      ),
      body:
      Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,right: 20,left: 20),
              child: TextField(
                controller: weightcontroller,
                decoration:InputDecoration(
                  labelText:"Weight (kg)",
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(),
                ) ,
                keyboardType: TextInputType.number,
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,right: 20,left: 20),
              child: TextField(
                controller: heightcontroller,
                decoration:InputDecoration(
                  labelText:"Height (Cm)",
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(),
                ) ,
                keyboardType: TextInputType.number,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(onPressed: (){
                clearResult();
              }, child: Text("Calculate",style: TextStyle(color: Colors.white)),
                style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.purpleAccent)),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                            shape: BoxShape.circle,
                          ),
                          child: Center(child: Text("Under Weight")),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                          child: Center(child: Text("Normal")),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height:60,
                          width:60,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          child: Center(child: Expanded(child: Text("Over Weight"))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            shape: BoxShape.circle,
                          ),
                          child: Center(child: Text("Obese")),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: 60,
                          width:60,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: Center(child: Text("Extremely Obese")),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),



    );
  }
}
