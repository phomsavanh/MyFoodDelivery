import 'package:flutter/material.dart';

class OrderCard extends StatefulWidget {
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 45,
              height: 75,
              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
              ),
              child: Column(
                children: <Widget>[
                  InkWell(
                    child: Icon(
                      Icons.keyboard_arrow_up,
                      color: Colors.grey,
                    ),
                    onTap: () {},
                  ),
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  InkWell(
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/lunch.jpeg"), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Colors.black,
                    offset: Offset(0, 5),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Grilled Chicken',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\u20ad 3.0',
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 14,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 16),
                  width: 120,
                  height: 45,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              'chicken',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              onTap: () {
                                print('delete');
                              },
                              child: Text(
                                'x',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                print('cancel');
              },
              child: Icon(
                Icons.cancel,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
