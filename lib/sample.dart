import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  List a =[
    "assets/cat.jpeg",
    "assets/gtimg.jpeg",
    "assets/gtimg.jpeg",
    "assets/gtimg.jpeg",
    "assets/gtimg.jpeg",
  ];
  List b=[
    "hi",
    "how",
    "how",
    "how",
    "how",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(border:Border.all()),
            child: CarouselSlider.builder(itemCount: a.length,

              options:  CarouselOptions(
                scrollDirection: Axis.horizontal,
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 80),
              viewportFraction: 0.8,
            ),
            itemBuilder: (BuildContext context, int index, int pageViewIndex){
              return Container(
                height:150,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(a[index]))
                ),
              );
            } ,
            )
          ),
          Container(
            height: 130,
            width: double.infinity,
            child: ListView.builder(
              itemCount: a.length,
                   scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context,int index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                            height: 80,
                      width: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(a[index]),fit: BoxFit.fill)
                      ),
                    ),
                    Text(b[index])
                  ],
                ),
              );
            }
            ),
          ),
          Container(
            height: 500,
            child: GridView.builder(
              itemCount: a.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10

                ), itemBuilder: (BuildContext ctx, index){
                  return Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(a[index]))),
                  );
            }),
          )
        ],

      ),
    );
  }
}
