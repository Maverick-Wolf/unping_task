import 'package:flutter/material.dart';
import 'package:unping_task/screens/screen1.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Screen1(),
      },
    ),
  );
}