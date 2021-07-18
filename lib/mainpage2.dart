import 'package:ecommerce_app/mainpage0.dart';
import 'package:ecommerce_app/buyingpage.dart';
import 'package:ecommerce_app/orderpage.dart';
import 'package:flutter/material.dart';

class MainPage2 extends StatefulWidget {
  const MainPage2({Key? key}) : super(key: key);

  @override
  _MainPage2State createState() => _MainPage2State();
}

class _MainPage2State extends State<MainPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        iconTheme: IconThemeData(
            color: Colors.black
        ),
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
          )
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
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    height: 120.0,
                    child: new Card(
                        child: ListTile(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => (BuyingPage())));
                          },
                            leading: Container(
                              child: Image.asset('assets/images/laptop.jpg'),
                            ),
                            title: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Laptop',
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                Text('Zairza',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                                Text('\$3000',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),),
                              ],
                            )
                        )
                    ),
                  );
                }
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orangeAccent,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Search',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text('My Cart',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              title: Text('Profile',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              backgroundColor: Colors.white
          ),
        ],
      ),
    );
  }
}



