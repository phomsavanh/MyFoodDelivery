import 'dart:ui';

import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String categoryName;
  final String imagePath;
  final int numberOfItem;
  FoodCard({
    this.imagePath,
    this.numberOfItem,
    this.categoryName,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Card(    
        shadowColor: Colors.grey.shade300,
        elevation: 5,
        child: InkWell(
          highlightColor: Colors.blue.shade500,
          splashColor: Colors.blue.shade300,
          borderRadius: BorderRadius.circular(8),
          onTap: () {
            print('card');
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: <Widget>[
                Image(
                  image: AssetImage(imagePath),
                  height: 65,
                  width: 65,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '$categoryName',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text('$numberOfItem kinds'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
