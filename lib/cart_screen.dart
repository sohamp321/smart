import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart/db_helper.dart';

import 'cart_model.dart';
import 'cart_provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  DBHelper? dbHelper = DBHelper();

  @override
  Widget build(BuildContext context) {
    final cart = CartProvider();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade300,
        title: const Text(
          'My Cart',
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
          FutureBuilder(
              future: cart.getData(),
              builder: (context, AsyncSnapshot<List<Cart>> snapshot){
                if(snapshot.hasData){
                  return Expanded(
                      child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context,index){
                          return Card(
                            child:Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image(
                                        height:100,
                                        width:100,
                                        image:AssetImage(snapshot.data![index].image.toString())
                                    ),
                                    Expanded(child:Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:[
                                        Row(
                                          children: [
                                            Text(snapshot.data![index].productName.toString(),
                                              // Text(chip['productName'].tostring(),
                                              style:TextStyle(
                                                fontWeight:FontWeight.bold,
                                                fontSize: 15,
                                              ),
                                            ),
                                            InkWell(
                                              onTap: (){
                                                dbHelper!.delete(snapshot.data![index].id!);
                                                cart.removeTotalPrice(double.parse(snapshot.data![index].productPrice.toString()));
                                              },
                                              child: Icon(Icons.delete),
                                            ),

                                          ],
                                        ),

                                        Text('Rs. '+ snapshot.data![index].productPrice.toString(),
                                          style:TextStyle(
                                            fontWeight:FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                        SizedBox(width:20),
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
                                                        onTap:(){
                                                          int quantity = snapshot.data![index].quantity!;
                                                          int price = snapshot.data![index].initialPrice!;

                                                          quantity--;
                                                          int? newPrice = price * quantity;

                                                          if(quantity >0){
                                                            dbHelper!.updateQuantity(
                                                                Cart(
                                                                    id: snapshot.data![index].id!,
                                                                    productId: snapshot.data![index].id!.toString(),
                                                                    productName: snapshot.data![index].productName!,
                                                                    initialPrice: snapshot.data![index].initialPrice!,
                                                                    productPrice: newPrice,
                                                                    quantity: quantity,
                                                                    unitTag: snapshot.data![index].unitTag.toString(),
                                                                    image: snapshot.data![index].image.toString())
                                                            ).then((value){
                                                              newPrice = 0;
                                                              quantity = 0;
                                                              cart.removeTotalPrice(double.parse(snapshot.data![index].initialPrice!.toString()));
                                                            }).onError((error, stackTrace){
                                                              print(error.toString());
                                                            });
                                                          }
                                                        },
                                                        child: Icon(Icons.remove, color:Colors.white,)),
                                                    Text(snapshot.data![index].quantity.toString(),
                                                      style:TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight: FontWeight.bold,
                                                      ),),
                                                    InkWell(
                                                        onTap: (){
                                                          int quantity = snapshot.data![index].quantity!;
                                                          int price = snapshot.data![index].initialPrice!;

                                                          quantity++;
                                                          int? newPrice = price * quantity;

                                                          dbHelper!.updateQuantity(
                                                              Cart(
                                                                  id: snapshot.data![index].id!,
                                                                  productId: snapshot.data![index].id!.toString(),
                                                                  productName: snapshot.data![index].productName!,
                                                                  initialPrice: snapshot.data![index].initialPrice!,
                                                                  productPrice: newPrice,
                                                                  quantity: quantity,
                                                                  unitTag: snapshot.data![index].unitTag.toString(),
                                                                  image: snapshot.data![index].image.toString())
                                                          ).then((value){
                                                            newPrice = 0;
                                                            quantity = 0;
                                                            cart.addTotalPrice(double.parse(snapshot.data![index].initialPrice!.toString()));
                                                          }).onError((error, stackTrace){
                                                            print(error.toString());
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
                          );
                        },)
                  );
                }
                return Text('');


              }),
          // Consumer<CartProvider>(builder: (context, value, child){
          //   return Visibility(
          //     visible: value.getTotalPrice().toStringAsFixed(2) == "0.00" ? false:true,
          //     child: Column(
          //       children: [
          //         ReusableWidget(title: 'Sub Total', value: r'Rs.'+value.getTotalPrice().toStringAsFixed(2)),
          //         // ReusableWidget(title: 'Sub Total', value: r'Rs.'+value.getTotalPrice().toStringAsFixed(2)),
          //         // ReusableWidget(title: 'Sub Total', value: r'Rs.'+value.getTotalPrice().toStringAsFixed(2)),
          //       ],
          //     ),
          //   );
          // })
        ],
      ),
    );
  }
}

class ReusableWidget extends StatelessWidget {
  final String title, value;
  const ReusableWidget({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: Theme.of(context).textTheme.subtitle2,),
          Text(value.toString(), style: Theme.of(context).textTheme.subtitle2,)
        ],
      ),
    );
  }
}
