import 'package:flutter/material.dart';
import 'package:stockmanage/widgets/btn_widget.dart';

import 'category.dart';

class Expenses extends StatefulWidget {
  @override
  _ExpensesState createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
      child: Column(children: <Widget>[
        Padding(
            padding: EdgeInsets.all(2.0),
            child: Text('Expenses List',
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
                  hintText: 'Enter Expenses Title'),
            )),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.description),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  hintText: 'Enter Expenses Description'),
            )),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.calendar_today),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  hintText: 'Enter Expenses Date'),
            )),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.price_change),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  hintText: 'Enter Expenses Amount'),
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
