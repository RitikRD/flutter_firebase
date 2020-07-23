import 'package:flutter/material.dart';
import 'package:flutter_firebase/pages/Home.dart';
import 'package:flutter_firebase/pages/Legal.dart';
import 'package:flutter_firebase/pages/login_page.dart';

class Setting_components extends StatefulWidget {
  @override
  _Setting_componentsState createState() => _Setting_componentsState();
}

class _Setting_componentsState extends State<Setting_components> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 15.0,
        ),
        new InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new HomePage()));
          },
          child: ListTile(
            title: Text("Support Center",
                style: TextStyle(color: Colors.black, fontSize: 17.0)),
            leading: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.black54,
            ),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        new InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new HomePage()));
          },
          child: ListTile(
            title: Text("Preference",
                style: TextStyle(color: Colors.black, fontSize: 17.0)),
            leading: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.black54,
            ),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        new InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => new Legal()));
          },
          child: ListTile(
            title: Text("Legal & About",
                style: TextStyle(color: Colors.black, fontSize: 17.0)),
            leading: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.black54,
            ),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        new InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("Version.",
                style: TextStyle(color: Colors.black, fontSize: 17.0)),
            subtitle: Text("Version 2.10.3.2.",
                style: TextStyle(color: Colors.black54, fontSize: 10.0)),
            leading: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.black54,
            ),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Divider(
          height: 10.0,
        ),
        new InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => new Login()));
          },
          child: ListTile(
            title: Text("Switch Account",
                style: TextStyle(color: Colors.blue, fontSize: 17.0)),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        new InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => new Login()));
          },
          child: ListTile(
            title: Text("Log Out",
                style: TextStyle(color: Colors.blue, fontSize: 17.0)),
          ),
        ),
      ],
    );
  }
}
