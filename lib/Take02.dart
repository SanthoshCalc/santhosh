import 'package:flutter/material.dart';

class san01 extends StatelessWidget {
  const san01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.black12,

      ),
      body:
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 250,
                    width: 140,
                    decoration: BoxDecoration(
                      image: DecorationImage(image:AssetImage("assets/phonepay.png")),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(image:AssetImage("assets/gtimg2.jpeg")),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image:AssetImage("assets/gtimg.jpeg")),
                        ),
                        ),
                        ]),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Container(
                            height: 150,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(image:AssetImage("assets/gtimg.jpeg")),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Container (
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(image:AssetImage("assets/gtimg2.jpeg")),
                            )),
                        )],
                    )
                  ],
                ),
              ],
            ),
            Container(
              height:400 ,
              width: 400,
              decoration:BoxDecoration(
                border: Border.all(),
                image: DecorationImage(image:AssetImage("assets/chrome.png"),fit: BoxFit.fill)
              ) ,
              child:Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 300,
                        width: 170,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/profile.jpeg")),
                        ),

                      ),
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: Text("Glacier Technology College in Coimbatore",
                          style: TextStyle(color: Colors.black,
                              fontSize: 25,fontWeight: FontWeight.bold),),
                      ),
                      )],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Container(
                          color: Colors.white,
                          width: 250,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: TextFormField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.person),
                                  hintText: "Enter name",
                                  border: OutlineInputBorder(),
                                )
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(onPressed: (){}, child: Text("login")),
                    ],
                  ),
                ],
              ) ,
            )

          ],
        ),




    );
  }
}
