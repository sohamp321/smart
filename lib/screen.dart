import 'package:flutter/material.dart';
class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);
  @override
  State<Screen> createState() => _ScreenState();
}
class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget> [
          Container(
            color:Colors.amber[200],
            height:100,
            width:500,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
                Icon(
                  Icons.location_on_outlined,
                  size:48,
                  color:Colors.black,
                ),
                Text(
                  '165-I3',
                  style:TextStyle(
                    fontFamily:'Gloock-Regular',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,

                  ),


                ),
                Container(
                  height:100,
                  width:140,
                  color:Colors.amber[200],
                ),
                Expanded(
                  child:Image.asset('assets/user3.png'),
                ),
              ],

            ),

          ),
          Container(
            padding:EdgeInsets.fromLTRB(10.0, 30.0, 270, 10.0),
            child:Text(
              'Hello,Jiya',
              style:TextStyle(
                fontSize:20,

              ),
            ),


          ),
          Container(
            padding:EdgeInsets.fromLTRB(20, 0.0, 110, 10.0),
            child:Row(
              children:[
                Text(
                  'Welcome to ',
                  style:TextStyle(
                    fontSize:30,
                    fontFamily:'Gloock-Regular',
                    fontWeight: FontWeight.bold,
                  ),

                ),
                Text(
                  'SMart ',
                  style:TextStyle(
                    fontSize:30,
                    fontFamily:'Gloock-Regular',
                    fontWeight: FontWeight.bold,
                    color:Colors.blue[800],
                  ),

                ),
              ],

            ),


          ),
          Container(
            height:48,
            width:350,
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),

            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'search',
              ),
            ),
          ),

          Container(
            padding:EdgeInsets.fromLTRB(0.0, 20.0,205.0,10.0),
            child:Text(
              'Categories',
              style:TextStyle(
                fontSize:30,
                fontFamily:'Gloock-Regular',
                fontWeight: FontWeight.bold,
              ),

            ),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
                  ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/items');

        },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue[100],
                padding: EdgeInsets.symmetric(horizontal: 7, vertical: 12),
              ),
              child:
                    Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/chips.png',
                        height: 85,
                        width: 100,
                      ),


                      Image.asset('assets/chips_text.png'),
                    ],
                  ),

              //   ],
              // ),
        ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/items');

                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow[100],
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 15),
                ),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/biscuits.png',
                      height: 85,
                      width: 100,
                    ),


                    Image.asset(
                        'assets/biscuit_text.png',
                      width:120,
                    ),
                  ],
                ),

                //   ],
                // ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/items');

                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[100],
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 15),
                ),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/pastry_2.png',
                      height: 85,
                      width: 100,
                    ),


                    Image.asset(
                      'assets/pastry_text.png',
                      width:120,
                    ),
                  ],
                ),

                //   ],
                // ),
              ),

            ],

          ),
          Container(
            height:10,
            width:500,
            color:Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/items');

                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[100],
                  padding: EdgeInsets.symmetric(horizontal: 0.1, vertical: 12),
                ),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/spices.png',
                      height: 90,
                      width: 100,
                    ),


                    Image.asset('assets/spicess_text2.png'),
                  ],
                ),

                //   ],
                // ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/items');

                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[100],
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 15),
                ),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/chocolates.png',
                      height: 90,
                      width: 100,
                    ),


                    Image.asset(
                      'assets/choco_text.png',
                      width:120,
                    ),
                  ],
                ),

                //   ],
                // ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/items');

                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow[100],
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 15),
                ),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/beve.png',
                      height: 85,
                      width: 100,
                    ),


                    Image.asset(
                      'assets/bev_text.png',
                      width:120,
                    ),
                  ],
                ),

                //   ],
                // ),
              ),

            ],

          ),
          Container(
            height:10,
            width:500,
            color:Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/items');

                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[100],
                  padding: EdgeInsets.symmetric(horizontal: 0.1, vertical: 12),
                ),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/cake.png',
                      height: 90,
                      width: 125,
                    ),


                    Image.asset('assets/cake_text1.png'),
                  ],
                ),

                //   ],
                // ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/items');

                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow[100],
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 15),
                ),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/cannedgoods.png',
                      height: 85,
                      width: 100,
                    ),


                    Image.asset(
                      'assets/cannedgoodstext.png',
                      width:120,
                    ),
                  ],
                ),

                //   ],
                // ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/items');

                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[100],
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 15),
                ),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/personalcare.png',
                      height: 85,
                      width: 100,
                    ),


                    Image.asset(
                      'assets/personal_text.png',
                      width:120,
                    ),
                  ],
                ),

                //   ],
                // ),
              ),

            ],

          ),

          // Container(
          //   height:60,
          //   width:500,
          //   color:Colors.red[50],
          //   child:Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children:[
          //       Icon(
          //         Icons.receipt,
          //
          //       ),
          //       Icon(
          //         Icons.home,
          //       ),
          //       Icon(
          //         Icons.shopping_cart,
          //       ),
          //
          //     ],
          //   ),
          // ),

        ],
      ),



    );
  }
}