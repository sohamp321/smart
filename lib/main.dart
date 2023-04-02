import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smart/beverages.dart';
import 'package:smart/items.dart';
import 'package:smart/loading.dart';
import 'package:smart/login.dart';
import 'package:smart/otp.dart';
import 'package:smart/screen.dart';
import 'package:smart/thanks.dart';
import 'package:smart/welcome.dart';
import 'package:smart/phone.dart';
import 'package:smart/verify_phone.dart';
import 'package:smart/cart_model.dart';
import 'package:smart/db_helper.dart';
import 'package:smart/cart_screen.dart';
import 'package:smart/cart_provider.dart';
import 'package:smart/fetch.dart';
import 'package:smart/biscuits.dart';
import 'package:smart/beverages.dart';
import 'package:smart/pastries.dart';
import 'package:smart/chocolates.dart';
import 'package:smart/cannedgoods.dart';
import 'package:smart/cakes.dart';
import 'package:smart/spices.dart';
import 'package:smart/personalcare.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const Loading(),
      '/login': (context) => const Login(),
      '/welcome': (context) => const Welcome(),
      '/screen': (context) => const Screen(),
      '/Thanks': (context) => const Thanks(),
      '/OTP': (context) => const OTP(),
      '/items': (context) => const ITEMS(),
      '/phone':(context) => const MyPhone(),
      '/verify_phone': (context) => const MyVerify(),
      '/cart_screen': (context) => const CartScreen(),
      '/fetch':(context)=> const Fetch(),
      '/biscuits':(context) => const Biscuits(),
      '/beverages':(context)=>const Beverages(),
      '/pastries':(context)=> const Pastries(),
      '/chocolates':(context)=> const Chocolates(),
      '/cannedgoods':(context)=>const Cannedgoods(),
      '/spices':(context)=> const Spices(),
      '/personalcare':(context)=> const Personalcare(),
      '/cakes':(context)=> const cakes(),


    },

  )
  );
}


