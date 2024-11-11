import 'package:flutter/material.dart';

class gst extends StatefulWidget {
  const gst({super.key});

  @override
  State<gst> createState() => _gstState();
}

class _gstState extends State<gst> {

  TextEditingController amount_controller = TextEditingController();
  TextEditingController gst_controller = TextEditingController();
  TextEditingController gst_amount = TextEditingController();
  TextEditingController total_amount = TextEditingController();
  double res = 0;
  double inclusive = 0;
  double inclusiveval = 0;
  double exclusive = 0;

  void Calc() {
    String amount = amount_controller.text;
    String gst = gst_controller.text;


    final double result = double.parse(amount_controller as String);

    res = gst.toString() as double;
    print(res);
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
          ),
          title: Center(child: Text("GST Calculator",
            style: TextStyle(color: Colors.white, fontSize: 30),)),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, right: 20, left: 20),
              child: TextField(
                controller: amount_controller,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.currency_rupee, color: Colors.blueAccent,),
                  labelText: "Amount ",
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
              child: TextField(
                controller: gst_controller,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.percent, color: Colors.blueAccent,),
                  labelText: "GST ",
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(onPressed: () {
                print(amount_controller);
                print(gst_controller);
                double amount = double.parse(amount_controller.text);
                double gst = double.parse(gst_controller.text);
                double c = (amount*gst)/100;
                double d = (amount/(1+gst/100));
                exclusive = amount + c;
                inclusive =d;
                inclusiveval=amount-d;
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        color: Colors.red,
                        height: 500,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Row(
                                children: [
                                  Text("GST: ",style: TextStyle(color: Colors.white,fontSize: 20)),
                                  Text(inclusiveval.toString(),style: TextStyle(color: Colors.white,fontSize: 20)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Row(
                                children: [
                                  Text("Inclusive:  ",style: TextStyle(color: Colors.white,fontSize: 20)),
                                  Text(inclusive.toString(),style: TextStyle(color: Colors.white,fontSize: 20)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Row(
                                children: [
                                  Text("Exclusive:  ",style: TextStyle(color: Colors.white,fontSize: 20),),
                                  Text(exclusive.toString(),style: TextStyle(color: Colors.white,fontSize: 20)),
                                ],
                              ),
                            ),

                          ],
                        ),
                      );
                    }
                );
              },
                child: Text(
                  "Calculate", style: TextStyle(color: Colors.white),),
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.red)),),
            ),
          ],
        ),


      );
    }
  }

