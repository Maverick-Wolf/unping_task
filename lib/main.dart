import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unping_task/providers/sign_up_provider.dart';
import 'package:unping_task/screens/screen1.dart';
import 'package:unping_task/screens/screen2.dart';
import 'package:unping_task/screens/screen3.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:unping_task/screens/screen4.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  var box = await Hive.openBox('dataBox');
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => SignUpProvider())],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        getPages: [
          GetPage(name: '/', page: () => const Screen1()),
          GetPage(
              name: '/screen2',
              page: () => const Screen2(),
              transition: Transition.zoom,
              transitionDuration: const Duration(milliseconds: 400)),
          GetPage(
              name: '/screen3',
              page: () => const Screen3(),
              transition: Transition.rightToLeftWithFade,
              transitionDuration: const Duration(milliseconds: 500)),
              GetPage(
              name: '/screen4',
              page: () => const Screen4(),
              transition: Transition.zoom,
              transitionDuration: const Duration(milliseconds: 500)),
        ],
      ),
    ),
  );
}
