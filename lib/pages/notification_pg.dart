import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_firebase/pages/Home.dart';
import 'package:flutter_firebase/components/notification_comp.dart';

class Notification_page extends StatefulWidget {
  @override
  _Notification_pageState createState() => _Notification_pageState();
}

class _Notification_pageState extends State<Notification_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text("Notification",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.notifications_active), onPressed: (){}),
          new IconButton(icon: Icon(Icons.home), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));
          }),
        ],
      ),
      body:  Notification_comp(),
    );
  }
}

