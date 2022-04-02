import 'package:flutter/material.dart';
import 'package:unping_task/theme.dart';

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OurTheme _theme = OurTheme();
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: _width,
        color: const Color(0xFF000303),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: _width * 0.7,
                height: _height * 0.5,
                child: Image.asset('assets/images/done.gif')),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "You are all set up and ready to go, thanks for registering :)",
              style: TextStyle(
                  color: _theme.primaryColor,
                  fontFamily: _theme.font,
                  fontSize: 25.0),
            )
          ],
        ),
      ),
    );
  }
}
