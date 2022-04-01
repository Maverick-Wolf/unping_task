import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unping_task/providers/sign_up_provider.dart';
import 'package:unping_task/screens/screen1.dart';
import 'package:unping_task/screens/screen2.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => SignUpProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const Screen2(),
        },
      ),
    ),
  );
}
