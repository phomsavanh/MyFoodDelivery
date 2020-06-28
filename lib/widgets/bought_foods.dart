import 'package:flutter/material.dart';

class BoughtFoods extends StatefulWidget {
  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double rating;

  BoughtFoods({
    this.id,
    this.name,
    this.imagePath,
    this.category,
    this.price,
    this.discount,
    this.rating,
  });
  @override
  _BoughtFoodsState createState() => _BoughtFoodsState();
}

class _BoughtFoodsState extends State<BoughtFoods> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      margin: EdgeInsets.only(top: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Stack(
          children: <Widget>[
            Container(
              child: Image.asset(
                widget.imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.black,
                  Colors.black12,
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
              ),
            ),
            Positioned(
              left: 20,
              bottom: 15,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Theme.of(context).primaryColor,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: Theme.of(context).primaryColor,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: Theme.of(context).primaryColor,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: Theme.of(context).primaryColor,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: Theme.of(context).primaryColor,
                            size: 16,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "("+ widget.rating.toString() +" Reviews)",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        widget.price.toString(),
                        style: TextStyle(
                            color: Colors.orangeAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Text(
                        'Min order',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
