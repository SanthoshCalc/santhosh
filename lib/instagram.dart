import 'package:flutter/material.dart';

class insta extends StatefulWidget {
  const insta({super.key});

  @override
  State<insta> createState() => _instaState();
}

class _instaState extends State<insta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:Icon(Icons.arrow_back_sharp) ,
        title: Text("Virat.kohli",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 160),
            child: Icon(Icons.verified,color: Colors.blueAccent,),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.more_vert,color: Colors.black,size: 25),
          ),
        ],
      ),
      body: DefaultTabController(
        length:5 , child: NestedScrollView(headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return[SliverAppBar(
            expandedHeight: 270,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image: AssetImage("assets/virat1.jpeg"),fit: BoxFit.fill),
                          ),
                        ),
                      ),
                     Padding(
                       padding: const EdgeInsets.only(top: 10, left: 30),
                       child: Column(
                         children: [
                           Text("1,699",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                           Text("posts",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),),
                         ],
                       ),
                     ),
                      Padding(
                        padding: const EdgeInsets.only(top:10,left: 30),
                        child: Column(
                          children: [
                            Text("270M",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                            Text("followers",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10,left: 30),
                        child: Column(
                          children: [
                            Text("303",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                            Text("following",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),),
                          ],
                        ),
                      ),
                    ],
                  ),
                 Padding(
                   padding: const EdgeInsets.only(top: 10,left: 20),
                   child: Row(
                     children: [
                       Text("Virat Kohli",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                     ],
                   ),
                 ),
                  Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: Row(
                      children: [
                        Text("Carpediem!",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                            height: 35,
                            width: 190,
                            child: ElevatedButton(onPressed: (){}, child: Text("Follow",style: TextStyle(color: Colors.white),),style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(Colors.blue,),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            ),
                            ),)),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                        width: 190,
                        child: ElevatedButton(onPressed: (){}, child: Text("Message",style: TextStyle(color: Colors.white),),style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.black12,),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                          ),)),
                      ),
                    ]
                  ),
                ],
              ),
            ),

            bottom: TabBar(
            tabs: [
          Tab(icon: Icon(Icons.grid_on),),
        Tab(icon: Icon(Icons.video_collection_outlined),),
        Tab(icon: Icon(Icons.person_pin_outlined),)
        ],
        ),

          )];


      }, body: TabBarView(children:[
        Container(
          height: 500,
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
              ),
              itemCount: 30,
              itemBuilder: (BuildContext context, int itemIndex)
              {
                return Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/virat1.jpeg")),
                  ),
                );
              }
          ),
        ),
        Container(
          height: 500,
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
              ),
              itemCount: 30,
              itemBuilder: (BuildContext context, int itemIndex)
              {
                return Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/virat2.jpeg"),fit: BoxFit.fill),
                  ),
                );
              }
          ),
        ),
        Container(
          height: 500,
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
              ),
              itemCount: 30,
              itemBuilder: (BuildContext context, int itemIndex)
              {
                return Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/virat3.jpeg"),fit: BoxFit.fill),
                  ),
                );
              }
          ),
        ),
      ]),

    ),
      ),







    );
  }
}
