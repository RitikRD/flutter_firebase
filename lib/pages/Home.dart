import 'package:flutter/material.dart';
import 'package:flutter_firebase/components/horizontal_list.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_firebase/components/my_orders.dart';
import 'package:flutter_firebase/components/products.dart';
import 'package:flutter_firebase/pages/about.dart';
import 'package:flutter_firebase/pages/cart.dart';
import 'package:flutter_firebase/pages/login_page.dart';
import 'package:flutter_firebase/pages/notification_pg.dart';
import 'package:flutter_firebase/pages/settings.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/fash1.jpg'),
          AssetImage('images/fash2.jpg'),
          AssetImage('images/fash3.jpg'),
          AssetImage('images/fash4.jpg'),
          AssetImage('images/fash5.jpeg'),
          AssetImage('images/fash6.jpg'),
        ],
        autoplay: true,
        dotSize: 5.0,
        indicatorBgPadding: 0.0,
        moveIndicatorFromBottom: 2.0,
        animationCurve: Curves.easeInCirc,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Center(
          child: new Text(
            "Fashkart",
            style: TextStyle(color: Colors.black,fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.shop,
              color: Colors.grey[900],
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => new Cart()));
            },
          ),
        ],
      ),
      drawer: new Drawer(

        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Ritik Dixit'),
              accountEmail: Text('ritikdixit004@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child:
                  Icon(Icons.person, size: 50, color: Colors.blueGrey[900]),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.blueGrey[900],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Login()));
              },
              child: ListTile(
                title: Text('Account Setting'),
                leading: Icon(
                  Icons.person,
                  color: Colors.blueGrey[900],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new HomePage()));
                    },
                    child: Text('Home Page')),
                leading: Icon(
                  Icons.home,
                  color: Colors.blueGrey[900],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Favorite Store'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new Cart()));
                },
                leading: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.blueGrey[900],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new My_orders()));
              },
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.blueGrey[900],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new Notification_page()));
              },
              child: ListTile(
                title: Text("Notification"),
                leading: Icon(
                  Icons.notifications_active,
                  color: Colors.blueGrey[900],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Language's/भाषा "),
                leading: Icon(
                  Icons.language,
                  color: Colors.blueGrey[900],
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Settings()));
              },
              child: ListTile(
                title: Text('Setting'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blueGrey[900],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new About()));
                },
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          //image carousel
          image_carousel,
          //padding widget
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),
          ),
          //horizontal list view begins here
          HorizontalList(),
          //padding widget
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text(' Products'),
          ),
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
