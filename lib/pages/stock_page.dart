import 'package:flutter/material.dart';
import 'package:stockmanage/widgets/btn_widget.dart';

import 'category.dart';

class StockPage extends StatefulWidget {
  @override
  _StockPageState createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
            child: Column(
      children: <Widget>[
        Padding(
            padding: EdgeInsets.all(2.0),
            child: Text('stock',
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
      ],
    )));
  }
}
