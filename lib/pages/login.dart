

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Second.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> globalFormKey = new GlobalKey<FormState>();
  var emailController =TextEditingController();
  var passController =TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      key: scaffoldKey,
      backgroundColor: Color(0xFF293462),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              margin: EdgeInsets.symmetric(vertical: 90, horizontal: 20),
              child: Form(
                key: globalFormKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Log In",
                      style: TextStyle(color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                      fontFamily: 'RobotoMono'),
                    ),


                    SizedBox(
                      height: 30,),

                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 1, horizontal: 20),
                      margin: EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            const Radius.circular(30)
                        ),
                        color: Colors.white,
                      ),

                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        decoration: InputDecoration(
                            hintText: " Email Address",
                            // prefixIcon: Icon(Icons.email,
                            //   color: Color(0xFF293462),
                            //
                            // )
                        ),
                      ),
                    ),


                    SizedBox(height: 1,),

                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 1, horizontal: 20),
                      margin: EdgeInsets.symmetric(
                          vertical: 3.0, horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            const Radius.circular(30)
                        ),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          controller: passController,
                          decoration: InputDecoration(
                            hintText: " Password ",

                          )
                      ),
                    ),

                    SizedBox(
                      height: 50,),
                    FlatButton(
                      padding: EdgeInsets.symmetric(
                        vertical: 13, horizontal: 95,
                      ),
                      onPressed: () {
                        // login();
                         Navigator.push(context, MaterialPageRoute(
                           builder: (context) => Second()));

                      },
                      child: Text(
                        "LOGIN", style: TextStyle(color: Colors.white,
                          fontFamily: 'RobotoMono',
                          fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                      color: Color(0xFF00818A),
                      shape: StadiumBorder(),
                    ),


                    FlatButton(
                      padding: EdgeInsets.symmetric(
                        vertical: 4, horizontal: 90,),
                      onPressed: () {},
                      child: Text("Forgot Password ?",
                        style: TextStyle(color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'RobotoMono'

                        ),
                      ),


                    ),

                    SizedBox(
                      height: 80,),
                    FlatButton(

                      onPressed: () {},
                      child: Text(
                        "Register Here", style: TextStyle(color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                          fontFamily: 'RobotoMono'
                      ),),

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

//   Future<void> login() async {
//     if(passController.text.isNotEmpty && emailController.text.isNotEmpty) {
//
//       var response = await http.post(Uri.parse("https://jsonplaceholder.typicode.com/users") ,
//           body :({
//             'email' : emailController.text,
//             'email' : passController.text,
//
//           }));
//       if (response.statusCode == 200){
//         Navigator.push(context, MaterialPageRoute(builder: (context) => Second()));
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
//         Text("Sign in successful")));
//       }
//       else{
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
//         Text("Sign in unsuccessful")));
//       }
//       }
//
//      else{
//        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
//        Text("please fill the required field")));
//     }
//   }
 }

