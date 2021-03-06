import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unping_task/providers/sign_up_provider.dart';
import 'package:unping_task/theme.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var box = Hive.box('dataBox');
    String? _teamSize = box.get('teamSize');
    String? _teamName = box.get('teamName');
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
                Get.back();
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
                            initialValue: _teamName ??
                                context.watch<SignUpProvider>().teamname,
                            onChanged: (value) {
                              context.read<SignUpProvider>().setTeamName(value);
                            },
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp("[0-9a-zA-Z]"))
                            ],
                            cursorColor: Colors.white,
                            style: const TextStyle(color: Colors.white),
                            maxLength: 10,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                counterText: "",
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.person_pin_circle_outlined,
                                  size: 27.0,
                                  color: _theme.primaryColor,
                                ),
                                labelText: "Team Name",
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
                            initialValue: _teamSize ??
                                context.watch<SignUpProvider>().teamsize,
                            onChanged: (value) {
                              context.read<SignUpProvider>().setTeamSize(value);
                            },
                            cursorColor: Colors.white,
                            style: const TextStyle(color: Colors.white),
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp("[0-9]"))
                            ],
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.people_outline,
                                  size: 27.0,
                                  color: _theme.primaryColor,
                                ),
                                labelText: "Team Size",
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
                            "Industry: ",
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
                              value: context.watch<SignUpProvider>().industry,
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
                                'Computer Industry',
                                'Aerospace Industry',
                                'Transport Industry',
                                'Agriculture industry',
                                'Education Industry',
                                'Health Care Industry'
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
                                context
                                    .read<SignUpProvider>()
                                    .setIndustry(newValue!);
                              }),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          SignUpProvider _provider =
                              Provider.of<SignUpProvider>(context,
                                  listen: false);
                          Get.toNamed('/screen3');
                          box.put(
                              'teamName',
                              _provider.teamname.isEmpty
                                  ? _teamName
                                  : _provider.teamname);
                          box.put(
                              'teamSize',
                              _provider.teamsize.isEmpty
                                  ? _teamSize
                                  : _provider.teamsize);
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
