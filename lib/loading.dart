import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/welcome');
    });
    return Scaffold(
      body:Container(
        // padding:EdgeInsets.fromLTRB(120.0, 330.0, 120.0, 330.0),


        color:Colors.amber,
        // decoration: BoxDecoration(

        // ),
        child:Image.asset('assets/loading.png',
          // fit:BoxFit.cover,
          width: double.infinity,
          height: double.infinity,

        ),

      ),
    );
  }
}