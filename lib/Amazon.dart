import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled/product.dart';

class front extends StatefulWidget {
  const front({super.key});

  @override
  State<front> createState() => _frontState();
}

class _frontState extends State<front> {

  List S = [
    "assets/deals.png",
    "assets/electronics.jpg",
    "assets/everyday.jpeg",
    "assets/fashion.jpg",
    "assets/grocery.jpeg",
    "assets/mobiles.jpeg",
    "assets/prime.png",
    "assets/girls.jpeg",
    "assets/books.jpg",
  ];
  List A = [
    "Deals",
    "Electronics",
    "Everyday",
    "Fashion",
    "Grocery",
    "Mobiles",
    "Prime",
    "Beauty",
    "Books",

  ];

  List N = [
    "assets/caro1.jpeg",
  "assets/caro2.jpeg",
  "assets/caro3.jpeg",
  "assets/caro4.jpeg",

  ];

  List D = [
    "assets/list1.jpeg",
    "assets/list2.jpeg",
    "assets/list3.jpeg",
    "assets/list4.jpeg",
    "assets/list5.jpeg",
    "assets/list6.jpeg",
  ];

  List Y = [
    "Dress",
    "credits Cards",
    "indian",
    "laptops",
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade300,
        title:
        TextFormField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),),
            prefixIcon: Icon(Icons.search),
            suffixIcon:Icon(CupertinoIcons.mic),
            hintText: ("Search Amazon.in"),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(CupertinoIcons.qrcode_viewfinder),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              Container(
                color: Colors.cyan.shade100,
                child: ListTile(shape: RoundedRectangleBorder
                  (side: BorderSide(color:Colors.cyan.shade100)),
                  leading: Icon(CupertinoIcons.location_solid),
                  title: Text("Deliver to s. - Coimbatore 641015",style:
                  TextStyle(color: Colors.black,
                      fontSize:18,fontWeight: FontWeight.normal),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(right: 14.0),
                    child: Icon(Icons.arrow_drop_down_sharp),
                  ),
                ),
              ),
              Container(
                height: 110,
                width: double.infinity,
                child: ListView.builder(itemCount: S.length,scrollDirection:Axis.horizontal,
                itemBuilder: (BuildContext context,int index){
                  return Column(
                    children: [
                      Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage(S[index]),fit: BoxFit.fill),
                    ),
                  ),
                      Text(A[index],style: TextStyle(color: Colors.black,
                          fontSize:13,fontWeight: FontWeight.normal)),
                    ],
                  );
                }),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const page()));
                },
                child: CarouselSlider.builder(
                  itemCount: N.length,
                  options:  CarouselOptions(
                    scrollDirection: Axis.horizontal,
                    height: 250.0,
                    enlargeCenterPage: false,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 100),
                    viewportFraction: 1,
                  ),
                  itemBuilder: (BuildContext context, int index, int pageViewIndex){
                    return Container(
                      height:150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(N[index]),fit: BoxFit.fill),
                      ),
                    );
                  } ,
                ),
              ),

              Container(
                color: Colors.grey.shade300,
                height: 230,
                width: double.infinity,
                child: ListView.builder(itemCount: D.length,scrollDirection:Axis.horizontal,
                    itemBuilder: (BuildContext context,int index){
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 210,
                              width: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(D[index]),fit: BoxFit.fill),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),),
              Padding(
                padding: const EdgeInsets.only(right: 200,top: 10),
                child: Text("Best dealings Today",style: TextStyle(color: Colors.black,
                    fontSize:20,fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 600,
                  child: GridView.builder(
                      physics:NeverScrollableScrollPhysics(),
                      itemCount: N.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ), itemBuilder: (BuildContext ctx, index){
                    return Column(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(N[index]),fit: BoxFit.fill)),
                        ),
                       Text(Y[index],style: TextStyle(color: Colors.black,
                            fontSize:23,fontWeight: FontWeight.normal)),

                      ],
                    );
                  }),
                ),
              ),



        
            ]),

      ),

    );
  }
}
