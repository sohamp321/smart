import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'cart_model.dart';
import 'cart_provider.dart';
import 'db_helper.dart';

class CartScreen2 extends StatefulWidget {
  const CartScreen2({Key? key}) : super(key: key);

  @override
  State<CartScreen2> createState() => _CartScreen2State();
}

class _CartScreen2State extends State<CartScreen2> {

  final auth = FirebaseAuth.instance;
  final ref = FirebaseDatabase.instance.ref('manish ki cart');
  // final ref = FirebaseDatabase.instance.ref();
  final cartdb = FirebaseDatabase.instance.ref();

  @override
  Widget build(BuildContext context) {

    final cart = CartProvider();
    // func();
    // print(url);
    // print('123');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade300,
        title: Text(
          'MyCart',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: 'Gloock-Regular',
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black87,
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/screen', (route) => false);
            // Navigator.pushReplacementNamed(context, '/screen');
          },
        ),
      ),
      body: Container(
          height: double.infinity,
          child: Expanded(
            child: FirebaseAnimatedList(
              query: ref,
              itemBuilder: (context, snapshot, animation, index) {
                return ListTile(
                  title: Column(
                    children: [
                      Row(
                        children: [
                          Image.network(
                              height: 100,
                              width: 100,
                              snapshot.child('image').value.toString()),
                          //     Image(
                          //     height:100,
                          //     width:100,
                          //     image:AssetImage(productImage[index].toString())
                          // ),
                          Container(
                            height: 10,
                            width: 10,
                            color: Colors.white,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 25,
                                  color: Colors.white,
                                ),
                                Text(
                                  snapshot
                                      .child('productName')
                                      .value
                                      .toString(),
                                  // Text(chip['productName'].tostring(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  'Rs. ' +
                                      snapshot
                                          .child('productPrice')
                                          .value
                                          .toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(width: 20),
                                // InkWell(
                                //   onTap: () async {
                                //     cartdb
                                //         .child('manish ki cart')
                                //         .child(snapshot
                                //         .child('productName')
                                //         .value
                                //         .toString())
                                //         .set({
                                //       // 'id': index,
                                //       // 'productId': index.toString(),
                                //       'productName': snapshot
                                //           .child('productName')
                                //           .value
                                //           .toString(),
                                //       'initialPrice': snapshot
                                //           .child('productPrice')
                                //           .value
                                //           .toString(),
                                //       'productPrice': snapshot
                                //           .child('productPrice')
                                //           .value
                                //           .toString(),
                                //       'quantity': 1,
                                //
                                //       // 'unitTag': productUnit[index].toString(),
                                //       'image':
                                //       snapshot.child('url').value.toString()
                                //     });
                                //
                                //     DatabaseReference nav = FirebaseDatabase
                                //         .instance
                                //         .ref('manish ki cart');
                                //
                                //     // Get the data once
                                //     DatabaseEvent event = await nav.once();
                                //
                                //     // Print the data of the snapshot
                                //     print(event.snapshot
                                //         .child('Bourbon')
                                //         .value); // { "name": "John" }
                                //
                                //     // id: index,
                                //     // productId: index.toString(),
                                //     // productName: productName[index].toString(),
                                //     // initialPrice: productPrice[index],
                                //     // productPrice: productPrice[index],
                                //     // quantity: 1,
                                //     // unitTag: productUnit[index].toString(),
                                //     // image: productImage[index].toString())
                                //   },
                                //   child: Align(
                                //     alignment: Alignment.centerRight,
                                //     child: Container(
                                //       width: 120,
                                //       height: 40,
                                //       decoration: BoxDecoration(
                                //         color: Colors.amber.shade300,
                                //         borderRadius: BorderRadius.circular(10),
                                //       ),
                                //       child: Center(
                                //         child: Text(
                                //           'Add to cart',
                                //           style: TextStyle(
                                //             color: Colors.black87,
                                //             fontWeight: FontWeight.bold,
                                //           ),
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child:InkWell(
                                    onTap:(){

                                    },
                                    child: Container(
                                      width:120,
                                      height:40,
                                      decoration: BoxDecoration(
                                        color:Colors.amber.shade300,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child:Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                                onTap:() async {
                                                  Object? quantity = snapshot.child('quantity').value;
                                                  Object? price = snapshot.child('productPrice').value;

                                                  int int_q = quantity as int;
                                                  int int_price = price as int;

                                                  int_q--;
                                                  int? newPrice = int_price * int_q;

                                                  cartdb.child('manish ki cart')
                                                      .child(snapshot
                                                      .child('productName').value.toString()).update({
                                                        'productName': snapshot
                                                            .child('productName')
                                                            .value
                                                            .toString(),
                                                        'initialPrice': snapshot
                                                            .child('productPrice')
                                                            .value
                                                            .toString(),
                                                        'productPrice': snapshot
                                                            .child('productPrice')
                                                            .value
                                                            .toString(),
                                                        'quantity': int_q,
                                                        'image':
                                                        snapshot.child('url').value.toString()
                                                      });
                                                  //
                                                  // if(quantity >0){
                                                  //   dbHelper!.updateQuantity(
                                                  //       Cart(
                                                  //           id: snapshot.data![index].id!,
                                                  //           productId: snapshot.data![index].id!.toString(),
                                                  //           productName: snapshot.data![index].productName!,
                                                  //           initialPrice: snapshot.data![index].initialPrice!,
                                                  //           productPrice: newPrice,
                                                  //           quantity: quantity,
                                                  //           unitTag: snapshot.data![index].unitTag.toString(),
                                                  //           image: snapshot.data![index].image.toString())
                                                  //   ).then((value){
                                                  //     newPrice = 0;
                                                  //     quantity = 0;
                                                  //     cart.removeTotalPrice(double.parse(snapshot.data![index].initialPrice!.toString()));
                                                  //   }).onError((error, stackTrace){
                                                  //     print(error.toString());
                                                  //   });
                                                  // }
                                                },
                                                child: Icon(Icons.remove, color:Colors.white,)),
                                            Text(snapshot
                                                .child('quantity')
                                                .value
                                                .toString(),
                                              style:TextStyle(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                              ),),
                                            InkWell(
                                                onTap: ()async{
                                                  Object? quantity = snapshot.child('quantity').value;
                                                  Object? price = snapshot.child('productPrice').value;

                                                  int int_q = quantity as int;
                                                  int int_price = price as int;

                                                  int_q++;
                                                  int? newPrice = int_price * int_q;

                                                  cartdb.child('manish ki cart')
                                                      .child(snapshot
                                                      .child('productName').value.toString()).update({
                                                    'quantity': int_q,
                                                  });
                                                },
                                                child: Icon(Icons.add, color:Colors.white,)),
                                          ],
                                        ),
                                      ),



                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  // title:Text(
                  //     snapshot.child('productName').value.toString()
                  // ,),
                );
              },
            ),
          )),
    );
  }
}
