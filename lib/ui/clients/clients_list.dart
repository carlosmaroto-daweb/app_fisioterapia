// ignore_for_file: library_private_types_in_public_api

import 'package:fisioterapia/ui/clients/client_profile.dart';
import 'package:fisioterapia/ui/ui_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClientsList extends StatefulWidget {
  const ClientsList({super.key});

  @override
  _ClientsList createState() => _ClientsList();
}

class _ClientsList extends State<ClientsList> {
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

  Widget customIconActions(IconData icon) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Icon(icon),
    );
  }

  void handleNavigateTapToClientProfile(BuildContext context) {
    Navigator.of(context)
        .push(CupertinoPageRoute(builder: (_) => const ClientProfile()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 0.0, vertical: 80.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: returnResponsiveWidth(context, 0.04)),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: returnResponsiveWidth(context, 0.1)),
                        child: Text(
                          'Clientes',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: returnResponsiveFontSize(context, 22),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveHeight(context, 0.05)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: returnResponsiveWidth(context, 0.9),
                        height: returnResponsiveHeight(context, 0.08),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: returnResponsiveWidth(context, 0.45),
                              height: returnResponsiveHeight(context, 0.05),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                onPressed: () {
                                  // Respond to button press
                                },
                                child: Text(
                                  'En tratamiento',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          returnResponsiveFontSize(context, 16),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            Container(
                              width: returnResponsiveWidth(context, 0.4),
                              height: returnResponsiveHeight(context, 0.05),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: <Color>[
                                    gradient1,
                                    gradient2,
                                    gradient3,
                                    gradient6
                                  ],
                                  tileMode: TileMode.mirror,
                                ),
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                onPressed: () {
                                  // Respond to button press
                                },
                                child: Text(
                                  'Completado',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          returnResponsiveFontSize(context, 16),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveHeight(context, 0.02)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: returnResponsiveWidth(context, 0.95),
                        height: returnResponsiveHeight(context, 0.85),
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: ((context, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  bottom:
                                      returnResponsiveHeight(context, 0.02)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: returnResponsiveWidth(context, 0.9),
                                    height:
                                        returnResponsiveHeight(context, 0.16),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 6.0,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            handleNavigateTapToClientProfile(
                                                context);
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                top: returnResponsiveHeight(
                                                    context, 0.01)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                const CircleAvatar(
                                                  radius: 35,
                                                  backgroundImage: AssetImage(
                                                      'assets/img/perfil.png'),
                                                ),
                                                RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                          text:
                                                              'Nombre del cliente \n',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize:
                                                                returnResponsiveFontSize(
                                                                    context,
                                                                    18),
                                                          )),
                                                      TextSpan(
                                                        text:
                                                            'Nombre de la lesión',
                                                        style: TextStyle(
                                                          color: greyColor,
                                                          fontSize:
                                                              returnResponsiveFontSize(
                                                                  context, 16),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: returnResponsiveHeight(
                                                  context, 0.02),
                                              bottom: returnResponsiveHeight(
                                                  context, 0.01)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                height: returnResponsiveHeight(
                                                    context, 0.03),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        returnResponsiveWidth(
                                                            context, 0.02)),
                                                decoration: BoxDecoration(
                                                  color: secondaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: const Center(
                                                  child: Text(
                                                    '5 Octubre 2023 - 08:00',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                              customIconActions(Icons.timeline),
                                              customIconActions(
                                                  Icons.file_copy_outlined),
                                              customIconActions(
                                                  Icons.video_call_outlined),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
