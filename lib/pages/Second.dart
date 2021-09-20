import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

import 'insta_page.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> globalFormKey = new GlobalKey<FormState>();
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      key: scaffoldKey,
      backgroundColor: Color(0xFF293462),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              margin: EdgeInsets.symmetric(vertical: 90, horizontal: 20),
              child: Form(
                key: globalFormKey,
                child: Column(
                  children: [

                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Upload Documents",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'RobotoMono'),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 20),
                      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(30)),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: " Profile Picture",
                          suffixIcon: IconButton(
                              onPressed: () {
                                _showDialog(context);
                              },
                              color: Color(0xFF293462),
                              icon: Icon(Icons.file_upload)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 20),
                      margin:
                          EdgeInsets.symmetric(vertical: 3.0, horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(30)),
                        color: Colors.white,
                      ),
                      child: TextField(
                        
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: " Driving Licence ",
                            suffixIcon: IconButton(
                                onPressed: () {
                                  _showDialog(context);
                                },
                                color: Color(0xFF293462),
                                icon: Icon(Icons.file_upload)),
                          )),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 20),
                      margin:
                          EdgeInsets.symmetric(vertical: 3.0, horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(30)),
                        color: Colors.white,
                      ),
                      child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: " Certificate ",
                            suffixIcon: IconButton(
                                onPressed: () {
                                  _showDialog(context);
                                },
                                color: Color(0xFF293462),
                                icon: Icon(Icons.file_upload)),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 20),
                      margin:
                          EdgeInsets.symmetric(vertical: 3.0, horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(30)),
                        color: Colors.white,
                      ),
                      child: TextField(
                          keyboardType: TextInputType.text,
                          //onsaved,

                          decoration: InputDecoration(
                            hintText: " Passport ",
                            suffixIcon: IconButton(
                                onPressed: () {
                                  _showDialog(context);
                                },
                                color: Color(0xFF293462),
                                icon: Icon(Icons.file_upload)),
                          )),
                    ),
                    SizedBox(
                      height: 50,
                    ),

                    
                    FlatButton(
                      padding: EdgeInsets.symmetric(
                        vertical: 13, horizontal: 100,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => insta_page()));
                      },
                      child: Text(

                        "Done",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'RobotoMono',
                            fontWeight: FontWeight.bold),
                      ),
                      color: Colors.white54,
                      shape: StadiumBorder(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
   Future<void> _showDialog(BuildContext context){
     return showDialog(context: context, builder: (BuildContext context){
       return AlertDialog(
           title: Text("Select picture !"),
       content: SingleChildScrollView(
        child: ListBody(
           children: [
            GestureDetector(
               child: (
                Text("Gallery")      ),
                onTap: (){
                 _openGallery(context);
               },
              ),
 Padding(padding: EdgeInsets.all(8.0)),
             GestureDetector(
                child: (
                     Text("Camera")
                 ),
                onTap: (){
                 _openCamera(context);
               },
             ),
            ],
         ),
         ),
         );

    });
  }

  _openGallery(BuildContext context) async{

   this.setState(() async {
     await _picker.pickImage(source : ImageSource.gallery,);
    });
   Navigator.of(context).pop();


 }

  _openCamera(BuildContext context) async {

     this.setState(() async {
       await _picker.pickImage(source : ImageSource.camera,);

    });
     Navigator.of(context).pop();

   }
 }
