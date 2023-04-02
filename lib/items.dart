import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart/cart_model.dart';
import 'package:smart/cart_provider.dart';
import 'package:smart/db_helper.dart';
import 'package:smart/fetch.dart';
// import 'package:badges/badges.dart';
class ITEMS extends StatefulWidget {
  const ITEMS({Key? key}) : super(key: key);
  @override
  State<ITEMS> createState() => _ITEMSState();
}
class _ITEMSState extends State<ITEMS> {

  List<String> productName = [ 'Indias Magic Masala','Hot n sweet chilli' , 'Classic' , 'Chile limon' , 'salt and vinegar','spicy treat','plain salted','Doritos'] ;
  // List<String> productUnit = [ 'Dozen' , 'KG' , 'Dozen' , 'KG' , 'KG','KG',] ;
  List<int> productPrice = [20,20,20,20,20,20,20,20];
  List<String> productImage = [
    'assets/imm.png',
    'assets/hotnsweetchilli-removebg-preview.png',
    'assets/classic-removebg-preview.png',
    'assets/chilelimonn-removebg-preview.png',
    'assets/saltandvinegar-removebg-preview.png',
    'assets/unclechips-removebg-preview.png',
    'assets/plainsalted-removebg-preview.png',
    'assets/doritos-removebg-preview.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade300,
        title: const Text(
            'Chips',
        style: TextStyle(
          color: Colors.black87,
          fontSize: 20,
        ),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.shopping_bag_outlined),
          SizedBox(width:20.0),
        ],

              ),
      body:Column(
        children: [
          Expanded(
              child:ListView.builder(
      itemCount: productName.length,
      itemBuilder: (context,index){
        return Card(
          child:Column(
            children: [
              Row(
                children: [
                  Image(
                    height:100,
                      width:100,
                      image:AssetImage(productImage[index].toString())
                  ),
                  Expanded(child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text(productName[index].toString(),
                  // Text(chip['productName'].tostring(),
                        style:TextStyle(
                          fontWeight:FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text('Rs. '+ productPrice[index].toString(),
                        style:TextStyle(
                          fontWeight:FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width:20),
                      Align(
                        alignment: Alignment.centerRight,
                          child:Container(
                            width:120,
                            height:40,
                            decoration: BoxDecoration(
                              color:Colors.amber.shade300,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child:Center(
                              child:Text('Add to cart',
                              style:TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                              ),),
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
        );
    },)
      ),
      ]
    ),
    );
  }
}

