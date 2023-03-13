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
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
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
          // Container(
          //   color:Colors.grey[200],
          //   width: 350.0,
          //   height: 48.0,
          //   child:Row(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     children:[
          //       Icon(
          //         Icons.search,
          //         size:20,
          //         color:Colors.black,
          //       ),
          //       Text(
          //         '   Search',
          //         style:TextStyle(
          //
          //           fontSize: 20,
          //
          //         ),
          //
          //
          //       ),
          //     ],
          //   ),
          //
          // ),
          Container(
            padding:EdgeInsets.fromLTRB(0.0, 40.0,205.0,20.0),
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
              Container(
                height:160,
                width: 120,
                color:Colors.blue[100],
                child:Column(
                  children:[
                    Image.asset('assets/chips.png'),
                    Container(
                      height:3,
                      width:120,
                      color:Colors.blue[100],
                    ),
                    Image.asset('assets/chips_text.png'),

                  ],
                ),

              ),
              Container(
                height:160,
                width: 120,
                color:Colors.yellow[100],
                child:Column(
                  children:[
                    Image.asset('assets/biscuits.png'),
                    Container(
                      height:3,
                      width:120,
                      color:Colors.yellow[100],
                    ),
                    Image.asset('assets/biscuit_text.png'),


                  ],
                ),

              ),
              Container(
                height:160,
                width: 120,
                color:Colors.red[100],
                child:Column(
                  children:[
                    Image.asset('assets/pastry_2.png'),
                    Container(
                      height:7,
                      width:120,
                      color:Colors.red[100],
                    ),
                    Image.asset('assets/pastry_text.png'),


                  ],
                ),

              ),

            ],

          ),
          Container(
            height:20,
            width:500,
            color:Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Container(
                height:160,
                width: 120,
                color:Colors.green[100],
                child:Column(
                  children:[
                    Image.asset('assets/spices.png'),
                    Container(
                      height:14,
                      width:120,
                      color:Colors.green[100],
                    ),
                    Image.asset('assets/spicess_text2.png'),

                  ],
                ),

              ),
              Container(
                height:160,
                width: 120,
                color:Colors.blue[100],
                child:Column(
                  children:[
                    Image.asset('assets/chocolates.png'),
                    Container(
                      height:0,
                      width:120,
                      color:Colors.yellow[100],
                    ),
                    Image.asset('assets/choco_text.png'),


                  ],
                ),

              ),
              Container(
                height:160,
                width: 120,
                color:Colors.yellow[100],
                child:Column(
                  children:[
                    Container(
                      height:10,
                      width:120,
                      color:Colors.yellow[100],
                    ),
                    Image.asset('assets/beve.png'),
                    Container(
                      height:28,
                      width:120,
                      color:Colors.yellow[100],
                    ),
                    Image.asset('assets/bev_text.png'),


                  ],
                ),

              ),

            ],

          ),
          Container(
            height:50,
            width:500,
            color:Colors.white,
          ),

          Container(
            height:60,
            width:500,
            color:Colors.red[50],
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Icon(
                  Icons.receipt,

                ),
                Icon(
                  Icons.home,
                ),
                Icon(
                  Icons.shopping_cart,
                ),

              ],
            ),
          ),

        ],
      ),



    );
  }
}