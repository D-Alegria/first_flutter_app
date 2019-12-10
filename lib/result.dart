import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function reset;

  Result(this.result, this.reset);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            "You did it. \n $result",
            style: TextStyle(
                fontSize: 36, color: Colors.red, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: Text("RESET",),
            onPressed: reset,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
