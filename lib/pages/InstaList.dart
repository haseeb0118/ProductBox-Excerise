import 'package:flutter/material.dart';
import 'package:untitled/pages/InstaStories.dart';

class InstaList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    var deviceSize = MediaQuery.of(context).size;

    return new ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => index == 0 ? new SizedBox(
          child: InstaStories(),
        height: deviceSize.height * 0.15,
      )
          : Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                children :[
                  new Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                     image: new DecorationImage(
                     fit: BoxFit.fill,
                     image: new NetworkImage(
                         "https://images.unsplash.com/photo-1631889740720-35bf0e8a9f33?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"))
                  ),
                ),
                new SizedBox(
                  width: 10.0,),
                new Text("John Doe",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                color: Color(0xFF293462),)
                ),
                ],
                ),
                new IconButton(onPressed: (){},
                    icon: Icon(Icons.more_vert))
              ],
            ),
          ),
          Flexible(
              fit: FlexFit.loose,
              child: new Image.network(
                "https://images.unsplash.com/photo-1631889740720-35bf0e8a9f33?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
                    fit: BoxFit.cover,
              ))
        ],
      ),

    );
  }
}
