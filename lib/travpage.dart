import 'package:flutter/material.dart';

class SecondpageX2 extends StatelessWidget {
  const SecondpageX2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productReceived = ModalRoute.of(context)?.settings.arguments as Map;
    return  Scaffold(body: SafeArea(child: Text(productReceived["place"])),);
  }
}
