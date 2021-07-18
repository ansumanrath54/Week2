import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'cart_page.dart';

class HiveMain extends StatefulWidget {
  const HiveMain({Key? key}) : super(key: key);

  @override
  _HiveMainState createState() => _HiveMainState();
}

class _HiveMainState extends State<HiveMain> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Hive.openBox('cartbox'),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError)
            return Text(snapshot.error.toString());
          else
            return CartPage();
        }
        else
          return Scaffold();
      },
    );
  }
}
