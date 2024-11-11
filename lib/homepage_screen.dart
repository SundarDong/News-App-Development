import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sansar/constants/url_constants.dart';
import 'package:sansar/widgets/new_cards.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override

  _fetchNew()async{
    var url=Uri.parse(NewsAPIURL);
    var response= await http.get(url);
    return jsonDecode(response.body);
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        centerTitle: true, 
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child:  FutureBuilder(future: _fetchNew(), builder: ((context,AsyncSnapshot snapshot){
            if(snapshot.hasData){
              return Column(
                children: [
                  ...snapshot.data["articles"]
                  .map((e)=>getNewsCard(e))
                ],
              );
            }else{
              return const CircularProgressIndicator();
            }
          })
        ),
             
            ),
      ));
  }
}
