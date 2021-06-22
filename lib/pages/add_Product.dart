import 'package:flutter/material.dart';
import 'package:stockmanage/widgets/btn_widget.dart';

import 'category.dart';

class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
      child: Column(children: <Widget>[
        Padding(
            padding: EdgeInsets.all(2.0),
            child: Text('Product Add/Update',
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
                  prefixIcon: Icon(Icons.add_circle),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  hintText: 'Enter Product Name'),
            )),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.production_quantity_limits),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  hintText: 'Enter Quantity'),
            )),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.description),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  hintText: 'Enter Product Description'),
            )),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
                decoration: InputDecoration(
              prefixIcon: Icon(Icons.notification_add),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              hintText:
                  'Do You Need low stock Alert Notification on this product?',
            ))),
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
