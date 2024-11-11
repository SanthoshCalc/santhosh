import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class spotii extends StatefulWidget {
  const spotii({super.key});

  @override
  State<spotii> createState() => _spotiiState();
}

class _spotiiState extends State<spotii> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
            return[
              SliverAppBar(
                //backgroundColor: Colors.brown,
                expandedHeight: 350,
                pinned: true,

                flexibleSpace: FlexibleSpaceBar(
                  title: Text('This is Harris jayaraj', textScaleFactor: 1),
                  background: Container(
                    // height: 500,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        stops: [0.1, 0.5, 0.7, 0.9],
                        colors: [
                          Colors.brown,
                          Colors.black,
                          Colors.brown,
                          Colors.black,
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 410,

                          child: Card(
                            child: ListTile(
                              leading: Icon(Icons.search_rounded),
                              title: Text("Find in Playlist"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Container(
                            height: 260,
                            width: 282,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                image: DecorationImage(image: AssetImage("assests/kyire0.jpg"),fit: BoxFit.fill)
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )];
          },
          body: Column(
              children: [

                Container(

                  child: Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text("This is Harris Jayaraj. The essential tracks, all in one playlist",style: TextStyle(color: Colors.white),),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.wifi,color: Colors.green,),
                      Text("  Spotify",style: TextStyle(fontSize: 20,color: Colors.white),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 260),
                  child: Text("53,206 saves. 4h 32min",style: TextStyle(color: Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.plus_circle,color: Colors.white,),
                      Icon(Icons.downloading_sharp,color: Colors.white,),
                      Icon(Icons.share,color: Colors.white,),
                      Icon(Icons.more_vert_sharp,color: Colors.white,),
                      Padding(
                        padding: const EdgeInsets.only(left: 190),
                        child: Icon(CupertinoIcons.shuffle,color: Colors.white,),
                      ),
                      ElevatedButton(onPressed: (){}, child: Icon(Icons.play_circle_sharp,color: Colors.green,size: 20,))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                      height: 300,
                      child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (BuildContext context, index){
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                leading: Container(
                                    height: 50,
                                    width :60,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(li[index].image),
                                          fit: BoxFit.fill
                                      ),

                                    )
                                ),
                                //  child: Image.asset(),
                                title: Text(li[index].text,style: TextStyle(color: Colors.white),),
                                trailing: Icon(Icons.more_vert_sharp,color: Colors.white,),
                              ),
                            );
                          }

                      )
                  ),
                )
              ]

          ),
        )
    );
  }
}
class mode{
  String? image;
  String? text;
  mode(this.image, this.text);
}

List li = data.map((e)=>mode(e["image"], e["text"])).toList();
var data = [
  {"image":"assests/song1.jpeg","text":"Venmathiye"},
  {"image":"assests/song2.jpeg","text":"Nenjai Poopol"},
  {"image":"assests/song3.jpeg","text":"Mudhar Kanave"},
  {"image":"assests/song4.jpeg","text":"Neela Nilave"},
  {"image":"assests/song5.jpeg","text":"Siru Siru Uravugal"},

];