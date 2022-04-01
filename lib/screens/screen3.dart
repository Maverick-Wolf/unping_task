import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unping_task/providers/sign_up_provider.dart';
import 'package:unping_task/theme.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    OurTheme _theme = OurTheme();
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          width: _width,
          height: _height,
          child: Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 0.0),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: _theme.primaryColor,
                size: 35.0,
              )),
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: _height * 0.6,
            width: _width * 0.27,
            child: Stack(
              children: [
                SizedBox(
                  height: _height * 0.6,
                  width: _width * 0.27,
                  child: Image.asset(
                    'assets/images/card.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Sign In",
                        style: TextStyle(
                            color: _theme.secondaryColor,
                            fontFamily: _theme.font,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: _width * 0.23,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color(0xFF1F2029)),
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 0.0, 5.0, 0.0),
                          child: TextFormField(
                            initialValue: context.watch<SignUpProvider>().housenumber,
                            onChanged: (value) {
                              context
                                  .read<SignUpProvider>()
                                  .setHouseNumber(value);
                            },
                            cursorColor: Colors.white,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.home,
                                  size: 27.0,
                                  color: _theme.primaryColor,
                                ),
                                labelText: "House Number",
                                labelStyle: TextStyle(
                                    color: const Color(0xFF909097),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0,
                                    fontFamily: _theme.font)),
                          ),
                        ),
                      ),
                      Container(
                        width: _width * 0.23,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color(0xFF1F2029)),
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 0.0, 5.0, 0.0),
                          child: TextFormField(
                            initialValue: context.watch<SignUpProvider>().streetaddress,
                            onChanged: (value) {
                              context
                                  .read<SignUpProvider>()
                                  .setStreetAddress(value);
                            },
                            cursorColor: Colors.white,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.home,
                                  size: 27.0,
                                  color: _theme.primaryColor,
                                ),
                                labelText: "Street Address",
                                labelStyle: TextStyle(
                                    color: const Color(0xFF909097),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0,
                                    fontFamily: _theme.font)),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: _width * 0.11,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color(0xFF1F2029)),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  10.0, 0.0, 5.0, 0.0),
                              child: TextFormField(
                                initialValue: context.watch<SignUpProvider>().city,
                                onChanged: (value) {
                                  context.read<SignUpProvider>().setCity(value);
                                },
                                cursorColor: Colors.white,
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    prefixIcon: Icon(
                                      Icons.location_city_outlined,
                                      size: 27.0,
                                      color: _theme.primaryColor,
                                    ),
                                    labelText: "City",
                                    labelStyle: TextStyle(
                                        color: const Color(0xFF909097),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.0,
                                        fontFamily: _theme.font)),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: _width * 0.01,
                          ),
                          Container(
                            width: _width * 0.11,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color(0xFF1F2029)),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  10.0, 0.0, 5.0, 0.0),
                              child: TextFormField(
                                initialValue: context.watch<SignUpProvider>().zipcode,
                                onChanged: (value) {
                                  context
                                      .read<SignUpProvider>()
                                      .setZipcode(value);
                                },
                                cursorColor: Colors.white,
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    prefixIcon: Icon(
                                      Icons.local_post_office_outlined,
                                      size: 27.0,
                                      color: _theme.primaryColor,
                                    ),
                                    labelText: "Zipcode",
                                    labelStyle: TextStyle(
                                        color: const Color(0xFF909097),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.0,
                                        fontFamily: _theme.font)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: _width * 0.05,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: _theme.primaryColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                'Next',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: _theme.font,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
