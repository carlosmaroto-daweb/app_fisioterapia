// ignore_for_file: library_private_types_in_public_api, slash_for_doc_comments

import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:fisioterapia/ui/clients/clients_list.dart';
import 'package:fisioterapia/ui/notifications_list.dart';
import 'package:fisioterapia/ui/ui_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  bool checked = false;

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

  /** [customButtonHeader] Método encargado de la construcción visual de cada uno de los bloques de menu situados en la cabecera, como acceso rápido a las funciones principales de la aplicación.
   * return Widget
   * param 
   *    String img => ruta de la imagen/icono a mostrar dentro del contenedor
   *    String label => texto identificado de cada uno de los bloques a dibujar
   * Histórico:
   *  v1.0.4+1  Creado el nuevo método
   * 
   */
  Widget customButtonHeader(String img, String label, Widget view) {
    return InkWell(
      onTap: () =>
          Navigator.of(context).push(CupertinoPageRoute(builder: (_) => view)),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.white, width: 2.5),
            ),
            child: Center(
              child: Image.asset(
                img,
                width: returnResponsiveWidth(context, 0.12),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: returnResponsiveHeight(context, 0.01)),
            child: Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: returnResponsiveFontSize(context, 18),
              ),
            ),
          )
        ],
      ),
    );
  }

  void handleNavigateTapToNotificationsList(BuildContext context) {
    Navigator.of(context)
        .push(CupertinoPageRoute(builder: (_) => const NotificationsList()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: returnResponsiveHeight(context, 0.06)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: returnResponsiveWidth(context, 0.95),
                      height: returnResponsiveHeight(context, 0.3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            gradient1,
                            gradient2,
                            gradient3,
                            gradient4,
                            gradient5,
                            gradient6
                          ],
                          tileMode: TileMode.mirror,
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: returnResponsiveHeight(context, 0.03)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                RichText(
                                  maxLines: 2,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                          text: 'Bienvenido de nuevo \n',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: returnResponsiveFontSize(
                                                context, 20),
                                            fontWeight: FontWeight.w700,
                                          )),
                                      TextSpan(
                                        text: 'Miguel Ángel',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: returnResponsiveFontSize(
                                              context, 18),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    handleNavigateTapToNotificationsList(
                                        context);
                                  },
                                  child: Container(
                                    width: 65,
                                    height: 65,
                                    decoration: BoxDecoration(
                                      color: iconButtonColor,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 6.0,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: const Icon(
                                      Icons.notifications_none_outlined,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: returnResponsiveHeight(context, 0.06)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                // v1.0.4+1
                                customButtonHeader('assets/icons/services.png',
                                    'Servicios', const ClientsList()),
                                customButtonHeader('assets/icons/reports.png',
                                    'Informes', const ClientsList()),
                                customButtonHeader('assets/icons/clients.png',
                                    'Clientes', const ClientsList()),
                                customButtonHeader('assets/icons/planner.png',
                                    'Agenda', const ClientsList()),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: returnResponsiveWidth(context, 0.95),
                    height: returnResponsiveHeight(context, 0.15),
                    child: CalendarTimeline(
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2023, 1, 1),
                      lastDate: DateTime(2027, 12, 31),
                      onDateSelected: (date) => print(date),
                      leftMargin: 20,
                      monthColor: greyColor,
                      dayColor: greyColor,
                      activeDayColor: Colors.white,
                      activeBackgroundDayColor: secondaryColor,
                      locale: 'es',
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: returnResponsiveWidth(context, 0.9),
                    height: returnResponsiveHeight(context, 0.45),
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              bottom: returnResponsiveHeight(context, 0.02)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '08:00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        returnResponsiveFontSize(context, 18),
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                width: returnResponsiveWidth(context, 0.7),
                                height: returnResponsiveHeight(context, 0.1),
                                decoration: BoxDecoration(
                                  color: boxCalendarColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const CircleAvatar(
                                      radius: 30,
                                      backgroundImage:
                                          AssetImage('assets/img/perfil.png'),
                                    ),
                                    RichText(
                                      maxLines: 2,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Cliente $index \n',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize:
                                                  returnResponsiveFontSize(
                                                      context, 18),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Nombre de la lesión',
                                            style: TextStyle(
                                              color: greyColor,
                                              fontSize:
                                                  returnResponsiveFontSize(
                                                      context, 14),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Transform.scale(
                                      scale: 1.5,
                                      child: Checkbox(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        side: BorderSide.none,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            checked = value!;
                                          });
                                        },
                                        value: checked,
                                        fillColor:
                                            MaterialStateColor.resolveWith(
                                                (states) => checkboxColor),
                                        activeColor: checkboxColor,
                                        checkColor: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
