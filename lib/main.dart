import 'package:flutter/material.dart';
import 'package:smart/loading.dart';
import 'package:smart/login.dart';
import 'package:smart/otp.dart';
import 'package:smart/screen.dart';
import 'package:smart/thanks.dart';
import 'package:smart/welcome.dart';

void main() => runApp( MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute:'/',
  routes:{
    '/': (context)=>const Loading(),
    '/login':(context)=>  const Login(),
    '/welcome':(context)=> const Welcome(),
    '/screen':(context)=>const Screen(),
    '/Thanks':(context)=>const Thanks(),
    '/OTP':(context)=>const OTP(),


  },

)
);