import 'package:ecommerce_app/mainpage0.dart';
import 'package:ecommerce_app/mainpage2.dart';
import 'package:ecommerce_app/buyingpage.dart';
import 'package:ecommerce_app/orderpage.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
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
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                child: Text('View',
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
              ),
              Container(
                margin: EdgeInsets.only(left: 220.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => (MainPage0())));
                      },
                      icon: Icon(Icons.apps,),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => (MainPage2())));
                      },
                      icon: Icon(Icons.list_outlined),
                    )
                  ],
                ),
              ),
            ],
          ),
          new Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(10, (index) {
                  return new Card(
                    elevation: 10.0,
                    margin: EdgeInsets.all(10.0),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)
                    ),
                    child: new Container(
                      child: ConstrainedBox(
                        constraints: BoxConstraints.expand(),
                        child: FlatButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => (BuyingPage())));
                        },
                          child: Image.asset('assets/images/laptop.jpg',),
                        ),
                      ),),
                  );
                }),
              )),
        ],
      ),
    );
  }
}
