// ignore_for_file: library_private_types_in_public_api, slash_for_doc_comments

import 'package:fisioterapia/ui/main_page.dart';
import 'package:fisioterapia/ui/ui_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompleteRegister extends StatefulWidget {
  const CompleteRegister({super.key});

  @override
  _CompleteRegister createState() => _CompleteRegister();
}

class _CompleteRegister extends State<CompleteRegister> {
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController townController = TextEditingController();
  TextEditingController provinceController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController cardIdController = TextEditingController();

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

  /** [customTextField] Método encargado de la construcción visual de cada uno de los textField personalizados, para la construcción completa de la view de completar el registro.
   * return Widget
   * param 
   *    TextEditingController controller  => controlador para manejar y tener el control del contenido interno del campo de texto
   *    String label                      => texto identificado de cada uno de los campos de texto
   * Histórico:
   *  v1.0.3+1  Creado el nuevo método
   * 
   */
  Widget customTextField(TextEditingController controller, String label) {
    return Padding(
      padding: EdgeInsets.only(top: returnResponsiveHeight(context, 0.02)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: returnResponsiveWidth(context, 0.1),
                bottom: returnResponsiveHeight(context, 0.01)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: returnResponsiveFontSize(context, 18)),
                ),
              ],
            ),
          ),
          SizedBox(
            width: returnResponsiveWidth(context, 0.8),
            height: 40,
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                labelText: label,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void handleNavigateTapToMainPage(BuildContext context) {
    Navigator.of(context)
        .push(CupertinoPageRoute(builder: (_) => const MainPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveHeight(context, 0.1)),
                  child: Text(
                    'Complete la información de su perfil',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: returnResponsiveFontSize(context, 20),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveHeight(context, 0.04)),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/img/perfil.png'),
                    radius: 60,
                  ),
                ),
                // v1.0.3+1
                customTextField(nameController, 'Nombre'),
                customTextField(surnameController, 'Apellidos'),
                customTextField(addressController, 'Dirección'),
                customTextField(townController, 'Población'),
                customTextField(provinceController, 'Provincia'),
                customTextField(phoneController, 'Teléfono'),
                customTextField(cardIdController, 'DNI'),
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveHeight(context, 0.06)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: returnResponsiveWidth(context, 0.6),
                        height: returnResponsiveHeight(context, 0.04),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: secondaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {
                            handleNavigateTapToMainPage(context);
                          },
                          child: Text(
                            'Continuar',
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
                Padding(
                  padding: EdgeInsets.only(
                      bottom: returnResponsiveHeight(context, 0.1),
                      top: returnResponsiveHeight(context, 0.02)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Quizás más tarde',
                        style: TextStyle(
                            color: greyColor,
                            fontSize: returnResponsiveFontSize(context, 18),
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
