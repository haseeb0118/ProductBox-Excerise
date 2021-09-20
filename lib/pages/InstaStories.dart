import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
 final topText = Row(
   mainAxisAlignment: MainAxisAlignment.spaceAround,
   children: [
     Text(
       "Stories",
       style: new TextStyle(
         fontWeight: FontWeight.bold,
         color: Color(0xFF293462),
       ),
     ),
          new Row(
            children: [
              new Icon(Icons.play_arrow,
               color: Color(0xFF293462)
              ),
              new Text("Watch all" ,style: TextStyle(fontWeight: FontWeight.bold,
              color: Color(0xFF293462),),
              )
            ],
          )
   ],
 );

 final stories = Expanded(
   child : Padding(
     padding: const EdgeInsets.only(top: 8.0),
     child: new ListView.builder(
       scrollDirection: Axis.horizontal,
         itemCount: 10,
         itemBuilder: (context , index) =>
             Stack(
               alignment: Alignment.bottomRight,
               children: [
                 new Container(
                   width: 60.0,
                   height:60.0,
                   decoration: new BoxDecoration(
                     shape: BoxShape.circle,
                 image: new DecorationImage(
                   fit: BoxFit.fill,
                     image: new NetworkImage(
                       'https://images.unsplash.com/photo-1631889740720-35bf0e8a9f33?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
                     ),

                 ),


                   ),
                 ),
                 index == 0 ? Positioned(
                     child: CircleAvatar(
                       backgroundColor: Color(0xFF293462),
                       radius: 10.0,
                       child: new Icon(Icons.add ,
                       size: 14.0,
                       color: Colors.white,),
                     )
                 )
                     :new Container(),
               ],

         ))
   )
 );

  @override
  Widget build(BuildContext context) {
    return new  Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          topText,
          stories,
        ],
      ),

    );
  }
}
