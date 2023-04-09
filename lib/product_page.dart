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

class ProductPage extends StatefulWidget {
  final String category_name;
  const ProductPage({Key? key, required this.category_name}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  // DBHelper? dbHelper = DBHelper();
  // ignore: non_constant_identifier_names

  final auth = FirebaseAuth.instance;
  final ref = FirebaseDatabase.instance.ref();
  final cartdb = FirebaseDatabase.instance.ref();

  // List<String> productName = [
  //   'Indias Magic Masala',
  //   'Hot n sweet chilli',
  //   'Classic',
  //   'Chile limon',
  //   'salt and vinegar',
  //   'spicy treat',
  //   'plain salted',
  //   'Doritos'
  // ];
  // List<String> productUnit = [
  //   'Dozen',
  //   'KG',
  //   'Dozen',
  //   'KG',
  //   'KG',
  //   'KG',
  // ];
  // List<int> productPrice = [20, 20, 20, 20, 20, 20, 20, 20];
  // List<String> productImage = [
  //   'assets/imm.png',
  //   'assets/hotnsweetchilli-removebg-preview.png',
  //   'assets/classic-removebg-preview.png',
  //   'assets/chilelimonn-removebg-preview.png',
  //   'assets/saltandvinegar-removebg-preview.png',
  //   'assets/unclechips-removebg-preview.png',
  //   'assets/plainsalted-removebg-preview.png',
  //   'assets/doritos-removebg-preview.png'
  // ];
  // Reference referenceRoot=FirebaseStorage.instance.ref();
  // Reference referenceDirImages =referenceRoot.child('images');

  @override
  Widget build(BuildContext context) {
    final ref = FirebaseDatabase.instance.ref(widget.category_name);
    final cart = CartProvider();
    // func();
    // print(url);
    // print('123');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade300,
        title: Text(
          widget.category_name,
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
                              snapshot.child('url').value.toString()),
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
                                InkWell(
                                  onTap: () async {
                                    cartdb
                                        .child('manish ki cart')
                                        .child(snapshot
                                        .child('productName')
                                        .value
                                        .toString())
                                        .set({
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
                                      'quantity': 1,

                                      // 'unitTag': productUnit[index].toString(),
                                      'image':
                                      snapshot.child('url').value.toString()
                                    });

                                    DatabaseReference nav = FirebaseDatabase.instance.ref().child('manish ki cart');

                                    // Get the data once
                                    DatabaseEvent event = await nav.once();

                                    // Print the data of the snapshot
                                    print(event.snapshot.child('productPrice').value); // { "name": "John" }

                                    // id: index,
                                    // productId: index.toString(),
                                    // productName: productName[index].toString(),
                                    // initialPrice: productPrice[index],
                                    // productPrice: productPrice[index],
                                    // quantity: 1,
                                    // unitTag: productUnit[index].toString(),
                                    // image: productImage[index].toString())
                                  },
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      width: 120,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.amber.shade300,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Add to cart',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                          ),
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
