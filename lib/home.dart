import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color(0xff00b4d8),
        title:RichText(
          text:const TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'Flutter ',
                style: TextStyle(fontWeight: FontWeight.bold,color:Color.fromARGB(255, 10, 77, 113),fontSize:25,),
              ),
              TextSpan(
                text: ' News',
                style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xff03045e) ,fontSize:25,),
              ),
            ],
          ) 
        ),
        centerTitle: true,
      ),
      backgroundColor:const Color.fromARGB(255, 122, 218, 238),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            SizedBox(
              height: 200,
              child: Image.network(
                "https://ds.static.rtbf.be/article/image/770x433/0/e/b/0c2358fde3cad2f8cce9ad03c9be2126-1657637572.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin:const EdgeInsets.all(10),
              child: const Text("""PUBG Mobile team initially used native development for both iOS and Android versions, 
            but for their community features, allowing players to share gameplay clips and more, 
            they decided to switch to Flutter. Here’s why""",
                style: TextStyle(fontSize:25,fontWeight:FontWeight.bold,color:Color(0xff03045e),),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              margin:const EdgeInsets.all(10),
              child: const Text("""Flutter supports easy internationalization and localization, allowing PUBG Mobile to reach a wider audience and cater to different languages and cultures.""",
                style: TextStyle(fontSize:15,color:Color.fromARGB(255, 48, 50, 179),),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(radius: 50,backgroundImage:NetworkImage("https://static.vecteezy.com/system/resources/previews/018/930/698/original/facebook-logo-facebook-icon-transparent-free-png.png"),),
                CircleAvatar(radius: 50,backgroundImage:NetworkImage("https://www.seekpng.com/png/detail/88-884742_blue-instagram-icon-png.png"),),
                CircleAvatar(radius: 50,backgroundImage:NetworkImage("https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png"),),
            ],)
        ],),
      ),
    );
  }
}