import 'package:flutter/material.dart';
import 'package:stockmanage/widgets/btn_widget.dart';

import 'category.dart';

class Purchase extends StatefulWidget {
  @override
  _PurchaseState createState() => _PurchaseState();
}

class _PurchaseState extends State<Purchase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
      child: Column(children: <Widget>[
        Padding(
            padding: EdgeInsets.all(2.0),
            child: Text('Purchase Entry',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ))),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.sell),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  hintText: 'Enter Product Name'),
            )),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  hintText: 'Enter Vendor Name'),
            )),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.production_quantity_limits),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  hintText: 'Purchase Qunatity'),
            )),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.calendar_today),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  hintText: 'Enter Purchase Date'),
            )),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.price_change),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  hintText: 'Enter Purchase Price'),
            )),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.price_change),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  hintText: 'Enter Purchase Type'),
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
