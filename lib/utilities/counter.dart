import 'package:flutter/material.dart';

class CounterDesign extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CounterDesign();
  }
}

class _CounterDesign extends State<CounterDesign> {
  int _n = 0;
  int _amt = 0;
  void add() {
    setState(() {
      _n++;
      _amt = _n * 17;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
      _amt = _n * 17;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 155.0,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 123, 204, 164),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            children: <Widget>[
              new IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Colors.green,
                ),
                onPressed: () {
                  add();
                },
              ),
              SizedBox(
                width: 10.0,
              ),
              new Text('$_n', style: new TextStyle(fontSize: 30.0)),
              SizedBox(
                width: 10.0,
              ),
              new IconButton(
                icon: const Icon(
                  Icons.remove,
                  color: Colors.red,
                ),
                onPressed: () {
                  minus();
                },
              ),
              SizedBox(
                width: 20.0,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 50.0,
        ),
        Container(
            child: Text(
          'MXN \$$_amt',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        )),
      ],
    );
  }
}