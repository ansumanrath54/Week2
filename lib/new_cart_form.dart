import 'package:flutter/material.dart';
import 'package:ecommerce_app/cartbox.dart';
import 'package:hive/hive.dart';

class NewCartForm extends StatefulWidget {
  const NewCartForm({Key? key}) : super(key: key);

  @override
  _NewCartFormState createState() => _NewCartFormState();
}

class _NewCartFormState extends State<NewCartForm> {
  final _formKey = GlobalKey<FormState>();

  late String _productId;
  late String _quantity;

  void addCart(CartBox cartBox) {
    final cart = Hive.box('cartbox');
    cart.add(cartBox);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Product ID'),
                  onSaved: (value) => _productId = value!,
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Quantity'),
                  onSaved: (value) => _quantity = value!,
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(bottom: 25.0),
            child: RaisedButton(
              child: Text('Add new Product'),
              onPressed: () {
                _formKey.currentState!.save();
                final newCart = CartBox(_productId, int.parse(_quantity));
                addCart(newCart);
              },
            ),
          )
        ],
      ),
    );
  }
}
