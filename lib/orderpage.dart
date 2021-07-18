import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        iconTheme: IconThemeData(
            color: Colors.black
        ),
        title: Text(
            'Your Orders',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),

      ),
      body: Column(
        children: [
          new Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    height: 120.0,
                    child: new Card(
                        child: ListTile(
                          onTap: () {
                            showDialog(context: context, builder: (ctx) => AlertDialog(
                              title: Text("Information"),
                              content: Text("This item has been already added to your cart."),
                              actions: <Widget>[
                                FlatButton(
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                  },
                                  child: Text("OK"),
                                ),
                              ],
                            ),);
                          },
                            leading: Container(
                              child: Image.asset('assets/images/laptop.jpg')
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
    );
  }
}

