import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class Chocolates extends StatefulWidget {
  const Chocolates({Key? key}) : super(key: key);

  @override
  State<Chocolates> createState() => _ChocolatesState();
}

class _ChocolatesState extends State<Chocolates> {
  final auth =FirebaseAuth.instance;
  final ref=FirebaseDatabase.instance.ref('chocolates');
  // Reference referenceRoot=FirebaseStorage.instance.ref();
  // Reference referenceDirImages =referenceRoot.child('images');

  @override
  Widget build(BuildContext context) {
    // func();
    // print(url);
    // print('123');
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade300,
        title: Text('Chocolates',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: 'Gloock-Regular',
            color:Colors.black87,
          ),),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black87,
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, '/screen', (route) => false);
            // Navigator.pushReplacementNamed(context, '/screen');
          },
        ),
      ),
      body:Container(
          height:double.infinity,
          child:Expanded(
            child: FirebaseAnimatedList(
              query:ref,
              itemBuilder: (context,snapshot,animation,index){
                return ListTile(
                  title:Column(
                    children: [

                      Row(
                        children: [
                          Image.network(
                              height: 100,
                              width:100,
                              snapshot.child('url').value.toString()),
                          //     Image(
                          //     height:100,
                          //     width:100,
                          //     image:AssetImage(productImage[index].toString())
                          // ),
                          Container(
                            width:10,
                            color:Colors.white,
                          ),
                          Expanded(child:Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Container(
                                height:25,
                                color:Colors.white,
                              ),
                              Text(snapshot.child('productName').value.toString(),
                                // Text(chip['productName'].tostring(),
                                style:TextStyle(
                                  fontWeight:FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Text('Rs. '+ snapshot.child('productPrice').value.toString(),
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
                  // title:Text(
                  //     snapshot.child('productName').value.toString()
                  // ,),
                );

              },),
          )

      ),
    );
  }
}
