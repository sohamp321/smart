import 'package:flutter/material.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Column(
        children:<Widget>[
          Container(
            padding:EdgeInsets.all(40.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget>[


              Image.asset('assets/ph.png'),

            ],

          ),
          Container(
            padding:EdgeInsets.fromLTRB(50.0, 15.0, 40.0, 0.0),
            child:Text(
              'OTP Verification ',
              style:TextStyle(
                fontFamily:'Gloock-Regular',
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          Container(
            padding:EdgeInsets.fromLTRB(50.0, 5.0, 40.0, 0.0),
            child:Text(
              'Enter the OTP sent to your number',
              style:TextStyle(
                fontFamily:'Gloock-Regular',

                fontSize: 17,
              ),
            ),
          ),
          SizedBox(height:30.0),
          Container(
            width:300,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget>[
                Container(
                  height:40,
                  width:60,
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
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
                ),
                Container(
                  height:40,
                  width:60,
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
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
                ),
                Container(
                  height:40,
                  width:60,
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
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
                ),
                Container(
                  height:40,
                  width:60,
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
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
                ),


              ],


            ),
          ),
          SizedBox(height:20),
          SizedBox(
            height:60,
            width:double.infinity,
            child: ElevatedButton(
              onPressed: (){},
                child:Text(
                    'Verify',
                     style:TextStyle(
                       fontWeight: FontWeight.bold,
                       color:Colors.black87,
                       fontSize: 30,

    ),
    ),
              style:ElevatedButton.styleFrom(
                primary:Colors.pink[100],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),



                ),

              ),


            ),


          ),
          // Container(
          //   padding:EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 50.0),
          //   // margin: EdgeInsets.all(20.0),
          //   // color:Colors.white,
          //   // child:Text('mail me'),
          //   child: FloatingActionButton.extended(
          //     onPressed: (){
          //       Navigator.pushReplacementNamed(context, '/screen');
          //     },
          //     label: const Text (
          //       "Verify",
          //       style:TextStyle(
          //         fontFamily:'Gloock-Regular',
          //         fontWeight: FontWeight.bold,
          //         fontSize: 30,
          //         color:Colors.black87,
          //       ),
          //     ),
          //     backgroundColor: Colors.pink[100],
          //     elevation: 0.0,
          //     shape: BeveledRectangleBorder(
          //       borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          //     ),
          //   ),),


        ],

      ),



    );
  }
}
