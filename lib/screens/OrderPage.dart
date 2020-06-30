import 'package:flutter/material.dart';
import 'package:food_delivery/screens/signin_page.dart';
import 'package:food_delivery/widgets/order_card.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  Widget _buildTotalContainer() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  dense: true,
                  leading: Text(
                    'Cart Total',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  trailing: Text(
                    '\u20ad 20.0',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  dense: true,
                  leading: Text(
                    'Discount',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  trailing: Text(
                    '\u20ad 2.0',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  dense: true,
                  leading: Text(
                    'Tax',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  trailing: Text(
                    '\u20ad 2.0',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(
                  indent: 16,
                  endIndent: 16,
                ),
                ListTile(
                  leading: Text(
                    'Cart Total',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  trailing: Text(
                    "\u20ad 22.0",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            width: MediaQuery.of(context).size.width - 32,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
              padding: EdgeInsets.all(12),
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {
                MaterialPageRoute materialPageRoute =
                    MaterialPageRoute(builder: (context) {
                  return SignInPage();
                });
                Navigator.push(context, materialPageRoute);
              },
              child: Text('Proceed to Checkout'),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Order Foods",
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: <Widget>[
              OrderCard(),
              OrderCard(),
              OrderCard(),
              OrderCard(),
              OrderCard(),
            ],
          ),
          _buildTotalContainer(),
        ],
      ),
    );
  }
}
