import 'package:flutter/material.dart';



class Register extends StatefulWidget {
  

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  


  



  

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Create an account",style: TextStyle(fontSize: 20,color:Colors.red[500],fontWeight: FontWeight.w500),),
            ),
          ],
        ),
    );
  }

}