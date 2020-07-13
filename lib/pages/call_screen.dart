import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: new Center(
        child: new Text(
          "Calls Log",
          style: new TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
    );
  }
}
