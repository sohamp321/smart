import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Column(
        children:<Widget> [
          Container(
            child:Image.asset('assets/loginone.png'),
          ),
          Container(
            padding:EdgeInsets.fromLTRB(0.0, 20.0, 240.0, 0.0),
            child:Text(
              'Name',
              style:TextStyle(
                fontFamily:'Gloock-Regular',
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          Container(
            color:Colors.white,
            margin:EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
            width: 330.0,
            height: 15.0,

          ),
          Container(
            height:50,
            width:310,
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Name',
              ),
            ),
          ),



          //
          Container(
            color:Colors.white,
            margin:EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            width: 330.0,
            height: 15.0,
          ),
          Container(
            padding:EdgeInsets.fromLTRB(35.0, 0.0, 230.0, 0.0),
            child:Text(
              'Location',
              style:TextStyle(
                fontFamily:'Gloock-Regular',
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          Container(
            color:Colors.white,
            margin:EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
            width: 330.0,
            height: 15.0,

          ),
          Container(
            height:50,
            width:310,
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Location',
              ),
            ),
          ),

          Container(
            color:Colors.white,
            margin:EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            width: 330.0,
            height: 15.0,
          ),
          Container(
            padding:EdgeInsets.fromLTRB(35.0, 10.0, 150.0, 0.0),
            child:Text(
              'Phone Number',
              style:TextStyle(

                fontFamily:'Gloock-Regular',
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          Container(
            color:Colors.white,
            margin:EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
            width: 330.0,
            height: 15.0,

          ),
          Container(
            height:50,
            width:310,
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Phone number',
              ),
            ),
          ),

          // Container(
          //   color:Colors.grey.shade300,
          //   margin:EdgeInsets.fromLTRB(30.0, 20.0, 20.0, 20.0),
          //   width: 330.0,
          //   height: 48.0,
          //   child:Text(
          //     '+91',
          //     style:TextStyle(
          //       fontFamily:'Gloock-Regular',
          //       fontWeight: FontWeight.bold,
          //       fontSize: 30,
          //     ),
          //   ),
          // ),
          Container(
            color:Colors.white,
            margin:EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
            width: 330.0,
            height: 10.0,

          ),
          Container(
            padding:EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 50.0),
            // margin: EdgeInsets.all(20.0),
            color:Colors.white,
            // child:Text('mail me'),
            child: FloatingActionButton.extended(
              onPressed: (){
                Navigator.pushReplacementNamed(context, '/screen');
              },
              label: const Text (
                "Let's Start Shopping",
                style:TextStyle(
                  fontFamily:'Gloock-Regular',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color:Colors.black87,
                ),
              ),
              backgroundColor: Colors.amber,
            ),),
        ],
      ),
    );;
  }
}