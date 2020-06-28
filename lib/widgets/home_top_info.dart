import 'package:flutter/material.dart';

class HomeTopInfo extends StatelessWidget {
  final textStyle = TextStyle(fontSize: 32, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
            Text('What would', style: textStyle),
            Text(
              'you like to eat?',
              style: textStyle,
            ),
          ]),
          Icon(
            Icons.notifications_none,
            size: 30,
            color: Theme.of(context).primaryColorDark,
          ),
        ],
      ),
    );
  }
}
