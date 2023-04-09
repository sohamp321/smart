import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart/cart_provider.dart';
import 'package:smart/items.dart';


// void main() {
//
//   runApp(const cart());
// }

class cart extends StatelessWidget{
  const cart({Key? key}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CartProvider(),
        builder: (context, child){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: const ITEMS(),
          );
        }
    );
  }
}


