import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children:<Widget> [
          Container(
            child: Image.asset('assets/abcdef.png'),
          ),
          Container(
            padding:EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 0.0),
            child:Text(
              'Get Your Favourite \n Items, Delivered Right \n To Your Doorstep',
              textAlign: TextAlign.center,
              style:TextStyle(
                fontFamily:'Montserrat-SemiBold',
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),



            ),

          ),
          // Container(
          //
          //   // padding:EdgeInsets.fromLTRB(40.0, 30.0, 40.0, 30.0),
          //   child:Text(
          //     'Items, Delivered Right ',
          //     style:TextStyle(
          //
          //       fontFamily:'Gloock-Regular',
          //       fontWeight: FontWeight.bold,
          //       fontSize: 30,
          //
          //
          //     ),
          //
          //
          //
          //   ),
          //
          // ),
          // Container(
          //
          //   // padding:EdgeInsets.fromLTRB(40.0, 30.0, 40.0, 30.0),
          //   child:Text(
          //     'To Your DoorStep',
          //     style:TextStyle(
          //
          //       fontFamily:'Gloock-Regular',
          //       fontWeight: FontWeight.bold,
          //       fontSize: 30,
          //
          //
          //     ),
          //
          //
          //
          //   ),
          //
          // ),


        ],
      ),


      floatingActionButton:FloatingActionButton.extended(
        onPressed: (){
          Navigator.pushReplacementNamed(context, '/screen');
        },
        label: Text(
          'Get Started',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color:Colors.black87,
            fontFamily: 'Montserrat-Bold',
          ),
        ),
        backgroundColor: Colors.amber,
        elevation: 0.0,
        shape: BeveledRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}