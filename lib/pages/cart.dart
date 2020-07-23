import 'package:flutter/material.dart';
import 'package:flutter_firebase/components/cart_products.dart';
import 'package:flutter_firebase/pages/Home.dart';
import 'package:flutter_firebase/pages/buy.dart';



class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blueGrey[900],
        title: Text('My Store'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.home,color: Colors.white,),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => new HomePage()));
                }),
        ],
      ),
      body: new Cart_products(),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(child: ListTile(
              title: new Text("Total: ",style: TextStyle(color: Colors.black),),
              subtitle: new Text("\$999",),
              ),
            ),
            Expanded(
                child: new MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => new Buy_now()));
                },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                child: Text('Buy',style: TextStyle(color: Colors.white),),
                color: Colors.blueGrey[900],
                ),
            ),
          ],
        ),
      ),
    );
  }
}

