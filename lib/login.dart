import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Log in to your account",style: TextStyle(fontSize: 20,color:Colors.red[500],fontWeight: FontWeight.w500),),
            ),
            Container(
              width: 330,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                buildCard(),
                Container(height: 10,),
                buildCard()

              ],),
              ),
          Align(
            alignment: Alignment.centerRight,
            child:Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text("Forgot Password?",style: TextStyle(fontSize: 15,color:Colors.red[500],fontWeight: FontWeight.w700),),
            ), ),
            MaterialButton(
              height: 49,
              minWidth: 320,
              onPressed: (){},color: Colors.red,textColor: Colors.white,child: Text("LOGIN"),),
              Container(
                width: 320,
                child:
               Divider(thickness: 2,)),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top:10.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      
                      CircleAvatar(
                        foregroundColor: Colors.grey,
                        radius: 30, backgroundColor: Colors.blue[800]),
                      
                      CircleAvatar(
                        foregroundColor: Colors.grey,
                        radius: 30,
                        backgroundColor: Colors.grey[300],),
                    ],
                  ),
                ),
              )
          ],
        ),
    );
  }

  Card buildCard()
   {

     
    return Card(
              elevation: 4,
              child: Container(
                height: 50,
                child: ListTile(
                leading: Icon(Icons.person_outline,color:Colors.black),
                title:  TextField(
                  decoration: InputDecoration.collapsed(hintText: "Username"),

                ),
                
                ),
              ),);
  }
}

