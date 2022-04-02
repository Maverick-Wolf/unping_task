import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unping_task/providers/sign_up_provider.dart';
import 'package:unping_task/theme.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var box = Hive.box('dataBox');
    String? _firstName = box.get('firstName');
    String? _lastName = box.get('lastName');
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
                            initialValue: _firstName??
                                context.watch<SignUpProvider>().firstname,
                            onChanged: (value) {
                              Provider.of<SignUpProvider>(context,
                                      listen: false)
                                  .setFirstName(value);
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
                                  Icons.person_outline,
                                  size: 27.0,
                                  color: _theme.primaryColor,
                                ),
                                labelText: "First Name",
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
                            initialValue: _lastName ??
                                context.watch<SignUpProvider>().lastname,
                            onChanged: (value) {
                              Provider.of<SignUpProvider>(context,
                                  listen: false).setLastName(value);
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
                                  Icons.person_outline,
                                  size: 27.0,
                                  color: _theme.primaryColor,
                                ),
                                labelText: "Last Name",
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
                          Text(
                            "Role in Company: ",
                            style: TextStyle(
                                color: _theme.secondaryColor,
                                fontFamily: _theme.font,
                                fontWeight: FontWeight.w600,
                                fontSize: 15.0),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          DropdownButton<String>(
                              value: box.get('role') ??
                                  context.watch<SignUpProvider>().roleincompany,
                              style: TextStyle(
                                  color: _theme.secondaryColor,
                                  fontFamily: _theme.font,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600),
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: _theme.primaryColor,
                                size: 22.0,
                              ),
                              items: <String>[
                                'Software Engineer',
                                'HR Manager',
                                'General Manager',
                                'Technology Manager',
                                'Product Manager',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                  ),
                                );
                              }).toList(),
                              dropdownColor: const Color(0xFF1F2029),
                              onChanged: (newValue) {
                                Provider.of<SignUpProvider>(context,
                                        listen: false)
                                    .setRoleInCompany(newValue!);
                              }),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          SignUpProvider _provider =
                              Provider.of<SignUpProvider>(context,
                                  listen: false);
                          Get.toNamed('/screen2');
                          box.put(
                              'firstName',
                              _provider.firstname.isEmpty
                                  ? _firstName
                                  : _provider.firstname);
                          box.put(
                              'lastName',
                              _provider.lastname.isEmpty
                                  ? _lastName
                                  : _provider.lastname);
                        },
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
