import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool hidePass = true;
  Icon icon = Icon(Icons.visibility_off);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          IconButton(
            alignment: Alignment.centerLeft,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              return Navigator.pop(context);
            },
          ),
          Container(
            margin: EdgeInsets.only(top: 24, bottom: 32),
            alignment: Alignment.center,
            child: Text(
              'Sign Up',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            elevation: 10,
            margin: EdgeInsets.all(8),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 32, bottom: 48, left: 24, right: 24),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      labelStyle: TextStyle(height: -18),
                      hintStyle: TextStyle(fontSize: 12),
                      labelText: 'User',
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Your Email or ID',
                      hintStyle: TextStyle(fontSize: 12),
                      labelStyle: TextStyle(height: -18),
                      labelText: 'Email',
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    obscureText: hidePass,
                    decoration: InputDecoration(
                      hintText: 'password',
                      labelStyle: TextStyle(height: -18),
                      hintStyle: TextStyle(fontSize: 12),
                      labelText: 'Password',
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              hidePass = !hidePass;
                              if (hidePass) {
                                icon = Icon(Icons.visibility_off);
                              } else {
                                icon = Icon(Icons.visibility);
                              }
                            });
                            print('visible');
                          },
                          icon: icon),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24, right: 16, left: 16, bottom: 16),
            width: MediaQuery.of(context).size.width - 32,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
              padding: EdgeInsets.all(14),
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {
                print("sign up");
              },
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
