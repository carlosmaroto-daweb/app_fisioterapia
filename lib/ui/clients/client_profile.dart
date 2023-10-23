// ignore_for_file: library_private_types_in_public_api

import 'package:fisioterapia/ui/ui_constants.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class ClientProfile extends StatefulWidget {
  const ClientProfile({super.key});

  @override
  _ClientProfile createState() => _ClientProfile();
}

class _ClientProfile extends State<ClientProfile> {
  String description =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent hendrerit in nibh iaculis sodales. Maecenas auctor placerat neque et ultricies. Nulla nunc neque, consectetur nec ipsum placerat, dapibus ornare tortor.';

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

  Widget customBoxHeader(String quantity, String label) {
    return Container(
      width: returnResponsiveWidth(context, 0.2),
      height: returnResponsiveHeight(context, 0.08),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: '$quantity \n',
                style: TextStyle(
                  color: secondaryColor,
                  fontSize: returnResponsiveFontSize(context, 18),
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: label,
                style: TextStyle(
                  color: greyColor,
                  fontSize: returnResponsiveFontSize(context, 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customTextArea(String title, String description) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: returnResponsiveHeight(context, 0.04),
              left: returnResponsiveWidth(context, 0.05)),
          child: Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: returnResponsiveFontSize(context, 18),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: returnResponsiveWidth(context, 0.05),
              top: returnResponsiveHeight(context, 0.01)),
          child: SizedBox(
            width: returnResponsiveWidth(context, 0.9),
            child: Text(
              description,
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: iconButtonColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: returnResponsiveHeight(context, 0.5),
                  width: returnResponsiveWidth(context, 1),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: returnResponsiveHeight(context, 0.03),
                            left: returnResponsiveWidth(context, 0.05)),
                        child: Row(
                          children: [
                            Text(
                              'Línea de tratamiento',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: returnResponsiveFontSize(context, 18),
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
                            Container(
                              width: returnResponsiveWidth(context, 0.9),
                              height: returnResponsiveHeight(context, 0.08),
                              decoration: BoxDecoration(
                                color: textColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: returnResponsiveHeight(context, 0.3),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: FixedTimeline.tileBuilder(
                              theme: TimelineThemeData(
                                nodePosition: 0,
                                color: const Color(0xff989898),
                                indicatorTheme: const IndicatorThemeData(
                                  position: 0,
                                  size: 20.0,
                                ),
                                connectorTheme: const ConnectorThemeData(
                                  thickness: 2.5,
                                ),
                              ),
                              builder: TimelineTileBuilder.connected(
                                connectionDirection: ConnectionDirection.before,
                                itemCount: 10,
                                contentsBuilder: (_, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, bottom: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Lorem ipsum dolor sit amet',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: returnResponsiveFontSize(
                                                context, 18),
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                        Text(
                                          '5 Octubre de 2023 - 08:00 h',
                                          style: TextStyle(
                                            color: textColor,
                                            fontSize: returnResponsiveFontSize(
                                                context, 18),
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                },
                                indicatorBuilder: (context, index) {
                                  return const OutlinedDotIndicator(
                                    borderWidth: 2.5,
                                  );
                                },
                                connectorBuilder: (_, index, ___) =>
                                    const SolidLineConnector(
                                        color: Color(0xff66c97f)),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          },
          label: Text(
            'Línea del tratamiento',
            style: TextStyle(
              color: Colors.black,
              fontSize: returnResponsiveFontSize(context, 16),
            ),
          ),
          icon: const Icon(
            Icons.timeline_rounded,
            color: Colors.white,
          )),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            left: returnResponsiveWidth(context, 0)),
                        child: Text(
                          'Ficha cliente',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: returnResponsiveFontSize(context, 22),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: returnResponsiveWidth(context, 0.04)),
                        child: const Icon(
                          Icons.video_call_outlined,
                          size: 30,
                          color: Colors.black,
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
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image:
                                    AssetImage('assets/img/client_profile.jpg'),
                                fit: BoxFit.cover)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: returnResponsiveHeight(context, 0.04),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'Alejandro Smith \n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize:
                                      returnResponsiveFontSize(context, 20),
                                  fontWeight: FontWeight.bold,
                                )),
                            TextSpan(
                                text: 'alexandro@gmail.com',
                                style: TextStyle(
                                  color: greyColor,
                                  fontSize:
                                      returnResponsiveFontSize(context, 18),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveHeight(context, 0.04)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: returnResponsiveWidth(context, 0.9),
                        height: returnResponsiveHeight(context, 0.1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              gradient1,
                              gradient2,
                              gradient3,
                              gradient4,
                              gradient5,
                              gradient6,
                            ],
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            customBoxHeader('50', 'Consultas'),
                            customBoxHeader('23', 'Años'),
                            customBoxHeader('10', 'Adjuntos'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                customTextArea('Descripción', description),
                customTextArea('Alergia', description),
                customTextArea('Medicación', description),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _InnerTimeline extends StatelessWidget {
  const _InnerTimeline({
    required this.messages,
  });

  final List<String> messages;

  @override
  Widget build(BuildContext context) {
    bool isEdgeIndex(int index) {
      return index == 0 || index == messages.length + 1;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: FixedTimeline.tileBuilder(
        theme: TimelineTheme.of(context).copyWith(
          nodePosition: 0,
          connectorTheme: TimelineTheme.of(context).connectorTheme.copyWith(
                thickness: 1.0,
              ),
          indicatorTheme: TimelineTheme.of(context).indicatorTheme.copyWith(
                size: 10.0,
                position: 0.5,
              ),
        ),
        builder: TimelineTileBuilder(
          indicatorBuilder: (_, index) =>
              !isEdgeIndex(index) ? Indicator.outlined(borderWidth: 1.0) : null,
          startConnectorBuilder: (_, index) => Connector.solidLine(),
          endConnectorBuilder: (_, index) => Connector.solidLine(),
          contentsBuilder: (_, index) {
            if (isEdgeIndex(index)) {
              return null;
            }

            return Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(messages[index - 1].toString()),
            );
          },
          itemExtentBuilder: (_, index) => isEdgeIndex(index) ? 10.0 : 30.0,
          nodeItemOverlapBuilder: (_, index) =>
              isEdgeIndex(index) ? true : null,
          itemCount: messages.length + 2,
        ),
      ),
    );
  }
}
