import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:smart/phone.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);
  @override
  State<User> createState() => _UserState();
}
class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade200,
        title: Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: 'Gloock-Regular',
            color:Colors.black87,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black87,
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, '/screen', (route) => false);
          },
        ),
      ),
      body:
          Container(
            color: Colors.grey.shade200,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children :<Widget>[
                    Image.asset('assets/user-removebg-preview.png'),
                  ],
                ),
                    Container(
                      color: Colors.white60,
                      height:60,
                      width:350,
                      child:Row(
                        children: <Widget>[
                          Text(
                            'Name : ',
                            style:TextStyle(
                              fontFamily:'Gloock-Regular',
                              fontSize: 25,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            MyPhone.name,
                            style:TextStyle(
                              fontFamily:'Gloock-Regular',
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height:10,
                    ),
                    Container(
                      color: Colors.white60,
                      height:60,
                      width:350,
                      child:Row(
                        children: <Widget>[
                          Text(
                            'Location : ',
                            style:TextStyle(
                              fontFamily:'Gloock-Regular',
                              fontSize: 25,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            MyPhone.location,
                            style:TextStyle(
                              fontFamily:'Gloock-Regular',
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height:10,
                    ),
                    Container(
                      color: Colors.white60,
                      height:60,
                      width:350,
                      child:Row(
                        children: <Widget>[
                          Text(
                            'Number: ',
                            style:TextStyle(
                              fontFamily:'Gloock-Regular',
                              fontSize: 25,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            MyPhone.number,
                            style:TextStyle(
                              fontFamily:'Gloock-Regular',
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),

              ],
            ),
          ),
    );
  }
}
