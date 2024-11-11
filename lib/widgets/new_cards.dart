
import 'package:flutter/material.dart';
import 'package:sansar/constants/url_constants.dart';
//import 'package:share_plus/share_plus.dart';


getNewsCard(e){
 return Stack(
   children: [Padding(
     padding: const EdgeInsets.all(5.0),
     child: Container(
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(12.0)
      ),
       child: Column(
         children: [
           Image.network(e["urlToImage"] ?? PlaceholderImageURL),
           GestureDetector(
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                children: [
                Text(e["title"],
                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(e["description"]??"..."),
                ),
                ],
               ),
             ),
           )
         ],
       ),
     ),
   ),
   Positioned(
    top: 20,
    right:20,
    child: GestureDetector(
      //onTap: () => Share.share("Read more news at :${e["url"]}"),
      child: const Icon(Icons.share,color: Colors.white,),
    ),
  )
 ]);
}