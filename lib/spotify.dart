import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:untitled/copy.dart';

class song extends StatefulWidget {
  const song({super.key});

  @override
  State<song> createState() => _songState();
}

class _songState extends State<song> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:
      NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
        return [
          SliverAppBar(
              expandedHeight: 400,
              pinned: true,
              backgroundColor: Colors.blueGrey,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Three Movie Songs', style: TextStyle(color: Colors.white), textScaleFactor: 1),
                background: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.1, 0.3, 0.5, 1.5],
                      colors: [
                        Colors.blueGrey,
                        Colors.blueGrey,
                        Colors.black26,
                        Colors.black,
                      ],
                    ),
                  ),

                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(Icons.search),
                            hintText: "Find the playlist",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              image: DecorationImage(image: AssetImage("assets/3songs.jpeg"),fit: BoxFit.fill)
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
          ),

        ];
      }, body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 10),
              child: Container(
                child: Row(
                  children: [
                    Icon(CupertinoIcons.wifi,color: Colors.green,),
                    Text("  Spotify",style: TextStyle(fontSize: 20,color: Colors.white),),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 260,top: 15),
              child: Text("530,206 saves. 19min",style: TextStyle(color: Colors.white),),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 10),
                  child: Container(
                    height: 40,
                    child: Icon(Icons.favorite_border,color: Colors.white,size: 30,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 20),
                  child: Container(
                    height: 40,
                    child: Icon(Icons.downloading,color: Colors.white,size: 30,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 10),
                  child: Container(
                    height: 40,
                    child: Icon(Icons.more_vert,color: Colors.white,size: 30,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 130),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Icon(CupertinoIcons.shuffle,color: Colors.grey,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: MaterialButton(onPressed: (){}, child: Icon(Icons.play_circle_sharp,color: Colors.green,size: 50,)),
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                  height: 400,
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (BuildContext context, index){
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ListTile(
                            leading: Container(
                                height: 50,
                                width :60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(ta[index].image),fit: BoxFit.fill,
                                  ),
                                ),
                            ),
                            title: Text(ta[index].text,style: TextStyle(color: Colors.white),),
                            trailing: Icon(Icons.more_vert_sharp,color: Colors.white,),
                          ),
                        );
                      }

                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200,top: 10),
              child: Text("You might also like",style: TextStyle(color: Colors.white,
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
                      Text(Y[index],style: TextStyle(color: Colors.white,
                          fontSize:23,fontWeight: FontWeight.normal)),

                    ],
                  );
                }),
              ),
            ),

          ],


        ),
      ),),
      );
  }
}
// class mode{
//   String? image;
//   String? text;
//   mode(this.image, this.text);
// }

List ta = data.map((e)=>mode(e["image"], e["text"])).toList();
var data = [
  {"image":"assets/3songs.jpeg","text":"Idhazhin Oram"},
  {"image":"assets/3songs.jpeg","text":"Why this Kolavari"},
  {"image":"assets/3songs.jpeg","text":"Kannazhaga"},
  {"image":"assets/3songs.jpeg","text":"Poo Nee Poo"},
  {"image":"assets/3songs.jpeg","text":"Nee Paartha Vizhigal"},

];

List N = [
  "assets/caro1.jpeg",
  "assets/caro2.jpeg",
  "assets/caro3.jpeg",
  "assets/caro4.jpeg",

];

List Y = [
  "melody",
  "tamil romance",
  "indian",
  "kollywood",
];