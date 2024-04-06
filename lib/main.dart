// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:glocery_app/models/cart_model.dart';
import 'package:glocery_app/pages/intro_page.dart';
import 'package:glocery_app/pages/pay_now.dart';
import 'package:provider/provider.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        routes: {
          '/homepage': (context) => const HomePage(),
          '/paynowpage': (context) => const PayNow(),
        },
      ),
    );
  }
}
