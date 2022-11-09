import 'package:all_in_one/detail.dart';
import 'package:all_in_one/home.dart';
import 'package:all_in_one/homeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<homeProvider>(create: (context) => homeProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => home(),
          '/detail':(context) => detail(),
        },
      ),
    ),
  );
}
