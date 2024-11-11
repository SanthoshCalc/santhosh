
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


const List<String> list=<String>['Qty:','1','2','3','4'];


class page extends StatefulWidget {
  const page({super.key});

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  List<String> items = ['Qty:','1','2','3','4'];
  String dropdownvalue = list.first;





  List K = [
    "assets/lappy.jpeg",
    "assets/lappy1.jpeg",
    "assets/lappy2.jpeg",
    "assets/lappy3.jpeg",
    "assets/lappy4.jpeg",

  ];

int currentindex = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade300,
        title: Row(
          children: [
            Card(
              child: SizedBox(
                height: 50,
                width:270,
                child: ListTile( leading: Icon(Icons.search),
                  title: Text("lenovo laptop",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize:20),),
                  trailing: Icon(Icons.mic),),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(CupertinoIcons.qrcode_viewfinder),
          ),
        ],
      ),
          body:
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    CarouselSlider.builder(itemCount: K.length,
                      options: CarouselOptions(
                        scrollDirection: Axis.horizontal,
                        height: 400,
                        enlargeCenterPage: false,
                        autoPlay: false,
                        aspectRatio: 16 / 11,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 100),
                        onPageChanged: (index,reason){
                          setState(() {
                            currentindex = index;
                          });

                        },
                        viewportFraction: 1,
                      ),
                      itemBuilder: (BuildContext context, int index, int pageViewIndex){
                        return Container(
                          height:400,
                          width: 400,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(K[index])),
                          ),

                        );

                      }
                  ),
                    Positioned(top: 15,
                    right: 20,
                      child: Icon(Icons.share),
                    ),
                    Positioned(
                      bottom: 20,
                        left: 20,
                        child: Icon(Icons.favorite_border),
                    ),
                   Padding(
                     padding: const EdgeInsets.only(top: 380,left: 150),
                     child: DotsIndicator(dotsCount:5,position: currentindex ),
                   ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 190,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 45,left: 10),
                        child: Text("Lenovo IdeaPad Gaming 3 AMD Ryzen 5 Hexa Core 5th Gen 5600H - (8 GB/1 TB HDD/256 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce GTX 1650/120 Hz) 82K201Y9IN Gaming Laptop  (15.6 inch, Shadow Black, 2.25 kg, With MS Office) ",style: TextStyle(color: Colors.black,fontSize:16 ),),
                      ),
                    ),
                    Text("4.5"),
                    Positioned(
                      top: 20,
                      right: 10,
                      child: RatingBarIndicator(
                        rating: 3.55,
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemCount: 5,
                        itemSize: 20,
                        direction: Axis.horizontal,
                      ),
                    ),
                    Positioned(
                        top: 20,
                        left: 10,
                        child: Text("Visit the Lenovo store",style: TextStyle(color: Colors.cyan.shade900 ,fontSize: 17,fontWeight: FontWeight.normal),)),
                    Positioned(
                        bottom:7,
                        left: 10,
                        child: Text("500+ bought in past month",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold))),

                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 80,
                      width: 500,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    ),
                    Positioned(
                      top: 10,
                      left: 15,
                      child:  Text("Style Name: ",
                        style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.normal,fontSize: 18)),
                    ),
                    Positioned(
                      top: 40,
                      left: 15,
                      child:  Text("Ryzen 5 5500H | RTX 2050 ",
                          style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold,fontSize: 18)),
                    ),
                    Positioned(
                      top: 30,
                        right: 30,
                        child: Icon(Icons.keyboard_arrow_down),
                    ),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 20,
                        child: Text(" Limited time Deal",style: TextStyle(backgroundColor: Colors.red,color: Colors.white),),
                      ),
                    ],
                  ),
                ),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            Container(
              height: 60,
              child: Text("-41%",style: TextStyle(fontSize: 40,fontWeight: FontWeight.normal,color: Colors.red),),

            ),
            Container(
              height: 60,
              child: Text(" \u{20B9}45,990",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black),),
            ),

          ],
        ),
      ),
                Padding(
                  padding: const EdgeInsets.only( left: 10),
                  child: Row(
                      children: [
                        Container(
                          height: 20,
                          child: Text("M.R.P: ",style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Container(
                            height:20,
                            child: Text("\u{20B9} 77,990", style: TextStyle(fontSize: 18,decoration: TextDecoration.lineThrough,),)),
                      ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 5),
                  child: Row(
                    children: [
                      Container(

                        height: 20,
                        child: Text("EMI from \u{20B9}2230. No Cost EMI available. ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 18)),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4, left: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        child: Text("EMI option.",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.normal,fontSize: 18)),
                      ),
                      Container(
                        height:30,
                        child: Text(" Inclusive of all taxes",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 18)),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.percent),
                    title:Text("All offers & discounts",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.currency_exchange),
                    title:Text("Exchange Your Old Products",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.collections_bookmark_sharp),
                    title:Text("Add Accessories",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.shield_moon_outlined),
                    title:Text("protect your laptop",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,right: 220),
                  child: Container(
                    height: 30,
                    child: Text("Total: \u{20B9}45,990 ",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.black)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 30),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        child: Text("FREE delivery",style: TextStyle(fontSize: 18,color: Colors.blue)),
                      ),

                      Container(
                        height: 50,
                        child: Text(" Saturday, 29 June.",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black)),
                      ),
                      Container(
                        height: 50,
                        child: Text(" Details",style: TextStyle(fontSize: 18, color: Colors.blue)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: RichText(text:TextSpan(
                   children: [
                     TextSpan(text:"Or fastest delivery",style: TextStyle(fontSize: 18,color: Colors.black) ),
                     TextSpan(text: " Tomorrow 30 june.",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black) ),
                     TextSpan(text: " Order within ",style: TextStyle(fontSize: 18, color: Colors.black)),
                     TextSpan(text: "13 hrs 11 mins. ", style: TextStyle(fontSize: 18, color: Colors.green) ),
                     TextSpan(text: "Details",style: TextStyle(fontSize: 18, color: Colors.blue)),
                   ],
                                 ) ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        child: Icon(Icons.location_on),
                      ),
                      Container(
                        height: 30,
                        child: Text("Deliver to Sandy - Coimbatore 641004",style: TextStyle(fontSize: 18, color: Colors.blue)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 300),
                  child: Container(
                    height: 50,
                    child: Text("In stock",style: TextStyle(fontSize: 25, color: Colors.green)),
                  ),
                ),
        Padding(
          padding: const EdgeInsets.only(left: 15,bottom: 10),
          child: Row(
          children: [
          DropdownButton<String>(
              value: dropdownvalue,
              icon: Icon(Icons.arrow_downward,),
              hint: Text("Qty:"),
              elevation: 16,
              style: TextStyle(color: Colors.black),
              underline: Container(
                height: 3,
                color: Colors.black54,
              ),
            onChanged: (String? value) {
              setState(() {
                dropdownvalue =value!;
              });
            },
            items: list.map<DropdownMenuItem<String>>((String value){
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          )
          ],
          ),
        ),
      Row(
          children: [
          SizedBox(
            height: 50,
          width: 410,
          child: ElevatedButton(onPressed: (){},style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.yellow),
          ),
              child: Text("Add to Cart",style: TextStyle(color: Colors.black,fontSize: 20),)),
          ),
          ],
      ),
               Padding(
                 padding: const EdgeInsets.only(top: 15),
                 child: Row(
                   children: [
                     SizedBox(
                       height: 50,
                       width: 410,
                       child: ElevatedButton(onPressed: (){},style: ButtonStyle(
                         backgroundColor: WidgetStateProperty.all(Colors.orange),
                       ),
                           child: Text("Buy Now",style: TextStyle(color: Colors.black,fontSize: 20),)),
                     ),
                   ],
                 ),
               ),

              ]
            ),
          )
    );


  }
}
