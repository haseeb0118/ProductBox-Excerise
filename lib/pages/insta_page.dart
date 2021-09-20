import 'dart:ui';

import 'package:flutter/material.dart';

import 'Insta_body.dart';

class insta_page extends StatefulWidget {


  @override
  _insta_pageState createState() => _insta_pageState();
}

class _insta_pageState extends State<insta_page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1.0,
        leading: new Icon(Icons.camera_alt,
          color: Color(0xFF293462),),
        title: SizedBox(
          height: 35.0,
          child: Text("Insta Gram",
            style: TextStyle(
              color: Color(0xFF293462),
            ),),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(Icons.send,
              color: Color(0xFF293462),),


          )
        ],


      ),
      backgroundColor: Colors.white,
      body: new   InstaBody(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: new BottomAppBar(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              new IconButton(
                  onPressed: (){

                  },
                  icon: Icon(
                    Icons.home,
                    color: Color(0xFF293462),
                  )),
              new IconButton(
                  onPressed: (){

                  },
                  icon: Icon(
                    Icons.search,
                    color: Color(0xFF293462),
                  )),
              new IconButton(
                  onPressed: (){

                  },
                  icon: Icon(
                    Icons.add_box,
                    color: Color(0xFF293462),
                  )),
              new IconButton(
                  onPressed: (){

                  },
                  icon: Icon(
                    Icons.favorite,
                    color: Color(0xFF293462),
                  )),
              new IconButton(
                  onPressed: (){

                  },
                  icon: Icon(
                    Icons.account_box,
                   color : Color(0xFF293462),
                  )),
            ],
          ),
        ),
      ),

    );
  }
}
