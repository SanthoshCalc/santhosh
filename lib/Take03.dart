import 'dart:ui';

import 'package:flutter/material.dart';

class san03 extends StatelessWidget {
  const san03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Center(
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage("assets/profile.jpeg"),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black54,
      body:
      Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(
                  height: 250,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                    ),
                  child: Column(
                    children: [
                      Container(
                        height: 225,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),

                          image: DecorationImage(
                            image: AssetImage("assets/phonepay.png"),fit: BoxFit.fill
                          ),
                          ),
                        child: ClipRRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaY: 5,sigmaX: 5),
                              child: Text("")),
                        ),
                      ),
                      Text("hello") ,
                    ],
                  ),
                  ),
                ),
              Container(
                height: 250,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      Container(
                          height: 225,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                              ),
                              image: DecorationImage(
                                  image: AssetImage("assets/phonepay.png"),fit: BoxFit.fill
                              )
                          ),
                        child: ClipRRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
                            child: Text(""),
                          ),
                        ),
                      ),
                      Text("hai")
                    ],
                  ),
              ),

            ],
          ),
          Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                image: DecorationImage(
                    image:AssetImage("assets/sis.jpeg"),
                    fit: BoxFit.fill),
              ),
            child:
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5,sigmaY: 6),

               child: Column(
                 children: [
                   Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Container(
                           height: 180,
                           width: 150,
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
                                   height: 50,
                                   width: 50,
                                   decoration: BoxDecoration(
                                     image: DecorationImage(image:AssetImage("assets/gtimg2.jpeg")),
                                   ),
                                 ),
                                 Container(
                                   height: 50,
                                   width: 50,
                                   decoration: BoxDecoration(
                                     image: DecorationImage(image:AssetImage("assets/profile.jpeg")),
                                   ),
                                 ),
                               ]),
                           Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(left: 20.0),
                                 child: Container(
                                   height: 50,
                                   width: 50,
                                   decoration: BoxDecoration(
                                     image: DecorationImage(image:AssetImage("assets/profile.jpeg")),
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(left: 10.0),
                                 child: Container (
                                     height: 50,
                                     width: 50,
                                     decoration: BoxDecoration(
                                       image: DecorationImage(image:AssetImage("assets/gtimg2.jpeg")),
                                     )),
                               )],
                           )
                         ],
                       ),

                     ],
                   ),
                   Row(
                     children: [
                       Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 50),
                             child: Container(
                               height: 70,
                               width: 50,
                               decoration: BoxDecoration(
                                 image: DecorationImage(image: AssetImage("assets/gtimg.jpeg")),
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 50),
                             child: Container(
                               height: 70,
                               width: 50,
                               decoration: BoxDecoration(
                                 image: DecorationImage(image: AssetImage("assets/gtimg.jpeg")),
                               ),
                             ),
                           ),
                         ],
                       ),
                       Expanded(child:
                       Column(
                         children: [
                           Text("sfdghghjbjknlmfdgfhjknmdsdfhbjhvvhvuvughbn"),
                           ElevatedButton(onPressed: (){}, child: Text("login")),
                         ],
                       )),
                     ],
                   ),
                 ],
               ),
            ),
          ),
          ),
            ],
          ),
      );
  }
}
