import 'package:flutter/material.dart';

class PayNow extends StatelessWidget {
  const PayNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey[800],
      ),
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Text(
          'Server Not Responding...',
          style: TextStyle(fontSize: 18, color: Colors.grey[700]),
        ),
      ),
    );
  }
}
