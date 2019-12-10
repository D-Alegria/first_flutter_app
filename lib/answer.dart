import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _selectorHandler;
  final String answer;
  
  Answer(this._selectorHandler,this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        child: Text(answer),
        onPressed: _selectorHandler,
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
