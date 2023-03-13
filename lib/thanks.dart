import 'package:flutter/material.dart';

class Thanks extends StatefulWidget {
  const Thanks({Key? key}) : super(key: key);

  @override
  State<Thanks> createState() => _ThanksState();
}

class _ThanksState extends State<Thanks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:<Widget> [
          Container(
            child:Image.asset('assets/Screenshot 2023-03-04 225132.png'),
          ),
          Container(
            padding:EdgeInsets.fromLTRB(50.0, 5.0, 40.0, 0.0),
            child:Text(
              'Thanks for your ',
              style:TextStyle(
                fontFamily:'Gloock-Regular',
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          Container(
            padding:EdgeInsets.fromLTRB(50.0, 0.0, 40.0, 5.0),
            child:Text(
              'order! ',
              style:TextStyle(
                fontFamily:'Gloock-Regular',
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          Container(
            padding:EdgeInsets.fromLTRB(20.0, 0.0, 10.0, 0.0),
            child:Text(
              'order is being packed for',
              style:TextStyle(
                fontFamily:'Gloock-Regular',
                fontSize: 20,
              ),
            ),
          ),
          Container(
            padding:EdgeInsets.fromLTRB(50.0, 0.0, 40.0, 10.0),

            child:Text(
              'shipping',
              style:TextStyle(
                fontFamily:'Gloock-Regular',
                fontSize: 20,
              ),
            ),
          ),
          Container(
            color:Colors.amber.shade200,
            margin:EdgeInsets.fromLTRB(30.0, 20.0, 20.0, 20.0),
            width: 300.0,
            height: 55.0,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget> [
                // Container(
                //   height:50,
                //   width :20,
                //   color:Colors.amber.shade200,
                // ),
                Container(child: Image.asset('assets/patn.jpg')),
                // Container(
                //   height:50,
                //   width :40,
                //   color:Colors.amber.shade200,
                // ),
                Container(child: Image.asset('assets/Screenshot_20230228_002816.png')),
                // Container(
                //   height:50,
                //   width :40,
                //   color:Colors.amber.shade200,
                // ),
                Container(child: Image.asset('assets/chi.png')),
                // Container(
                //   height:50,
                //   width :40,
                //   color:Colors.amber.shade200,
                // ),
                Container(child: Image.asset('assets/milk.png'))
              ],
            ),
          ),

          Container(
            padding:EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
            color:Colors.white,
            child: FloatingActionButton.extended(
              onPressed: (){},
              label: Text (
                "My orders ",
                style:TextStyle(
                  fontFamily:'Gloock-Regular',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color:Colors.black87,
                ),
              ),
              backgroundColor: Colors.amber,
            ),),
        ],
      ),
    );
  }
}

