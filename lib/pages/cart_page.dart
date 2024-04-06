// ignore_for_file: prefer_interpolation_to_compose_strings, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:glocery_app/models/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        foregroundColor: Colors.grey[800],
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Consumer<CartModel>(
        builder: (context, value, child) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(12),
                  itemCount: value.cartItems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(12)),
                        child: ListTile(
                          leading: Image.asset(
                            value.cartItems[index][2],
                            height: 30,
                          ),
                          title: Text(
                            value.cartItems[index][0],
                          ),
                          subtitle: Text('\$ ' + value.cartItems[index][1]),
                          trailing: IconButton(
                            icon: const Icon(Icons.cancel_rounded),
                            onPressed: () =>
                                Provider.of<CartModel>(context, listen: false)
                                    .removeItemfromCart(index),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              //total + pay now

              Padding(
                padding: const EdgeInsets.all(36.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green[200],
                      borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Total Price',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '\$ ' + value.calculateTotalPrice(),
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                      MaterialButton(
                        padding: EdgeInsets.all(12),
                        color: Colors.yellow[100],
                        onPressed: () =>
                            Navigator.pushNamed(context, '/paynowpage'),
                        child: Text(
                          'Pay Now',
                          style: TextStyle(color: Colors.grey[800]),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
