// ignore_for_file: library_private_types_in_public_api

import 'package:fisioterapia/ui/complete_register.dart';
import 'package:fisioterapia/ui/ui_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _initialLabelIndex = 0;
  bool _visibleLogin = true;
  bool _visibleRegister = false;

  double returnResponsiveWidth(context, double originalPercentValue) {
    return MediaQuery.of(context).size.width * originalPercentValue;
  }

  double returnResponsiveHeight(context, double originalPercentValue) {
    return MediaQuery.of(context).size.height * originalPercentValue;
  }

  double returnResponsiveFontSize(context, double originalValue) {
    return (MediaQuery.of(context).size.width * originalValue) /
        masterScreenWidth;
  }

  Widget login(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: returnResponsiveHeight(context, 0.05)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: returnResponsiveWidth(context, 0.7),
                child: TextFormField(
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: textColor),
                      ),
                      hintText: 'Usuario'),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: returnResponsiveHeight(context, 0.02)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: returnResponsiveWidth(context, 0.7),
                child: TextFormField(
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: textColor),
                      ),
                      hintText: 'Contraseña'),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: returnResponsiveHeight(context, 0.08)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: returnResponsiveWidth(context, 0.6),
                height: returnResponsiveHeight(context, 0.06),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    handleNavigateTapToControllerPage(context);
                  },
                  child: Text(
                    'Acceder',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: returnResponsiveFontSize(context, 18),
                        fontWeight: FontWeight.w800),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget register(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: returnResponsiveHeight(context, 0.02)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: returnResponsiveWidth(context, 0.7),
                child: TextFormField(
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: textColor),
                      ),
                      hintText: 'Usuario'),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: returnResponsiveHeight(context, 0.02)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: returnResponsiveWidth(context, 0.7),
                child: TextFormField(
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: textColor),
                      ),
                      hintText: 'Email'),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: returnResponsiveHeight(context, 0.02)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: returnResponsiveWidth(context, 0.7),
                child: TextFormField(
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: textColor),
                      ),
                      hintText: 'Contraseña'),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: returnResponsiveHeight(context, 0.06)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: returnResponsiveWidth(context, 0.6),
                height: returnResponsiveHeight(context, 0.06),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    // Respond to button press
                  },
                  child: Text(
                    'Regístrate',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: returnResponsiveFontSize(context, 18),
                        fontWeight: FontWeight.w800),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  void switchContainer(index) {
    if (index == 0) {
      _initialLabelIndex = 0;
      _visibleLogin = true;
      _visibleRegister = false;
    } else {
      _initialLabelIndex = 1;
      _visibleLogin = false;
      _visibleRegister = true;
    }
  }

  void handleNavigateTapToControllerPage(BuildContext context) {
    Navigator.of(context)
        .push(CupertinoPageRoute(builder: (_) => const CompleteRegister()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset(
                  'assets/logos/area14_logo_white.png',
                  height: returnResponsiveHeight(context, 0.3),
                ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: returnResponsiveWidth(context, 0.9),
                    height: returnResponsiveHeight(context, 0.6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: returnResponsiveHeight(context, 0.03)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ToggleSwitch(
                                minWidth: returnResponsiveWidth(context, 0.3),
                                cornerRadius: 20.0,
                                activeBgColor: const [secondaryColor],
                                borderColor: const [textColor],
                                borderWidth: 1.0,
                                activeFgColor: Colors.white,
                                inactiveBgColor: Colors.white,
                                inactiveFgColor: textColor,
                                initialLabelIndex: _initialLabelIndex,
                                totalSwitches: 2,
                                labels: const ['Iniciar sesión', 'Registrate'],
                                customTextStyles: [
                                  TextStyle(
                                      fontSize:
                                          returnResponsiveFontSize(context, 14),
                                      fontWeight: FontWeight.w600),
                                  TextStyle(
                                      fontSize:
                                          returnResponsiveFontSize(context, 14),
                                      fontWeight: FontWeight.w600),
                                ],
                                radiusStyle: true,
                                onToggle: (index) {
                                  setState(() {
                                    switchContainer(index);
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                            visible: _visibleLogin, child: login(context)),
                        Visibility(
                            visible: _visibleRegister,
                            child: register(context)),
                        Padding(
                          padding: EdgeInsets.only(
                              top: returnResponsiveHeight(context, 0.05)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: textColor,
                                child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 30,
                                    child: Image.asset(
                                      'assets/icons/google.png',
                                      width:
                                          returnResponsiveWidth(context, 0.1),
                                    )),
                              ),
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: textColor,
                                child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 30,
                                    child: Image.asset(
                                      'assets/icons/apple.png',
                                      width:
                                          returnResponsiveWidth(context, 0.1),
                                    )),
                              ),
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: textColor,
                                child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 30,
                                    child: Image.asset(
                                      'assets/icons/email.png',
                                      width:
                                          returnResponsiveWidth(context, 0.1),
                                    )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
