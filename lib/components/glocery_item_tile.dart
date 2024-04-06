// ignore_for_file: prefer_typing_uninitialized_variables, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class GloceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String itemImagePath;
  final color;
  final void Function()? onPressed;
  const GloceryItemTile(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.itemImagePath,
      required this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: color[100], borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              itemImagePath,
              height: 70,
            ),
            Text(
              itemName,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            MaterialButton(
              onPressed: onPressed,
              color: color[700],
              child: Text(
                '\$ ' + itemPrice,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
