import 'package:flutter/material.dart';
import 'package:stockmanage/widgets/btn_widget.dart';

import 'category.dart';

class Customer extends StatefulWidget {
  @override
  _CustomerState createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
      child: Column(children: <Widget>[
        Padding(
            padding: EdgeInsets.all(2.0),
            child: Text('Customer Add/Update',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ))),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Icon(
            Icons.photo,
            size: 50,
          ),
        ),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  hintText: 'Enter Customer Name'),
            )),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.add),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  hintText: 'Enter Customer Compay'),
            )),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.cabin),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  hintText: 'Enter Customer Adderss'),
            )),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  hintText: 'Enter Customer EmailAdderss'),
            )),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  hintText: 'Enter Customer MobileNo'),
            )),
        Expanded(
          child: Center(
            child: ButtonWidget(
              onClick: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Category()));
              },
              btnText: "SUBMIT",
            ),
          ),
        )
      ]),
    ));
  }
}
