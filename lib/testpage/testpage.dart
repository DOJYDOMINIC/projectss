import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Exitdialog(),
  ));
}

class Exitdialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async {
      return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title:Text("Exit"),
          content: Text("Do you want to exit"),
          actions: [
            ElevatedButton(onPressed: (){
Navigator.of(context).pop(true);
            }, child: Text("YES")),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop(false);
            }, child: Text("NO"))
          ],
        ),
      );
    }
    WillPopScope(child: Scaffold(
      appBar: AppBar(

      ),
    ), onWillPop: showAlert,);
  }
}
