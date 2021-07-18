import 'package:ecommerce_app/hivemain.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/orderpage.dart';


class BuyingPage extends StatefulWidget {
  const BuyingPage({Key? key}) : super(key: key);

  @override
  _BuyingPageState createState() => _BuyingPageState();
}

class _BuyingPageState extends State<BuyingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        iconTheme: IconThemeData(
            color: Colors.black
        ),
        title: Text(
            'SkillKart',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black
            )
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => (OrderPage())));
            },
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(30.0),
            child: Image.asset('assets/images/laptop.jpg'),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                child: Text('Laptop',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0
                  ),),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20.0),
                child: Text('Zairza',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold
                  ),),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 200.0),
            child: Text('\$3000',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
              ),),
          ),
          Container(
            padding: EdgeInsets.only(top: 130.0),
            child: RaisedButton(
              padding: EdgeInsets.fromLTRB(130, 10, 130, 10),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => (HiveMain())));

              },
              color: Colors. amber,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius. circular(5)),
              child: Text("Add to Cart",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20.0),
            child: RaisedButton(
              padding: EdgeInsets.fromLTRB(140, 10, 140, 10),
              onPressed: () {
                showDialog(context: context, builder: (ctx) => AlertDialog(
                  title: Text("Information"),
                  content: Text("This item will be available soon."),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Text("OK"),
                    ),
                  ],
                ),
                );
              },
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius. circular(5)),
              child: Text("Buy Now",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),),
            ),
          )
        ],
      ),
    );
  }
}
