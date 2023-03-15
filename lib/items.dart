import 'package:flutter/material.dart';

class ITEMS extends StatefulWidget {
  const ITEMS({Key? key}) : super(key: key);

  @override
  State<ITEMS> createState() => _ITEMSState();
}

class _ITEMSState extends State<ITEMS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('chips'),
      ),

    );
  }
}

