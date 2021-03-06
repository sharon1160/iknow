import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iknow/screens/home_admin/home_admin_screen.dart';


// Main Stateful Widget Start
class BienesAdminScreen extends StatefulWidget {
  @override
  _BienesAdminScreenState createState() => _BienesAdminScreenState();
}

class _BienesAdminScreenState extends State<BienesAdminScreen> {
  // Title List Here
  var titleList = [
    "Requerimiento de Bienes N° 001-2020-MDC/G-MCR",
    "Requerimiento de Bienes N° 002-2020-MDC/G-JCP",
    "Requerimiento de Bienes N° 003-2020-MDC/G-AMR",
    "Requerimiento de Bienes N° 004-2020-MDC/G-DCV",
    "Requerimiento de Bienes N° 005-2020-MDC/G-TTD",
    "Requerimiento de Bienes N° 006-2020-MDC/G-MSR",
    "Requerimiento de Bienes N° 007-2020-MDC/G-AJQ",
    "Requerimiento de Bienes N° 008-2020-MDC/G-VHF",
  ];

  // Autores
  var autList = [
    "Hecho por: Marcela Caceres Roca",
    "Hecho por: Juana Calcina Palacios",
    "Hecho por: Ana Mendoza Rosales",
    "Hecho por: Daniel Castro Valverde",
    "Hecho por: Tatiana Tapia Duran",
    "Hecho por: Margot Suarez Roquez",
    "Hecho por: Ana Jara Quispe",
    "Hecho por: Valeria Huaman Flores"
  ];

  // Description List Here
  var descList = [
    "+ Especificaciones Técnicas.",
    "+ Especificaciones Técnicas.",
    "+ Especificaciones Técnicas.",
    "+ Especificaciones Técnicas.",
    "+ Especificaciones Técnicas.",
    "+ Especificaciones Técnicas.",
    "+ Especificaciones Técnicas.",
    "+ Especificaciones Técnicas."
  ];

  

  // Fechas
  var fechList = [
    "Fecha: 01/12/2020",
    "Fecha: 29/11/2020",
    "Fecha: 28/11/2020",
    "Fecha: 27/11/2020",
    "Fecha: 26/11/2020",
    "Fecha: 25/11/2020",
    "Fecha: 24/11/2020",
    "Fecha: 23/11/2020"
  ];

  // Image Name List Here
  var imgList = [
    "assets/icons/avatar.png",
    "assets/icons/avatar.png",
    "assets/icons/avatar.png",
    "assets/icons/avatar.png",
    "assets/icons/avatar.png",
    "assets/icons/avatar.png",
    "assets/icons/avatar.png",
    "assets/icons/avatar.png"
  ];

  @override
  Widget build(BuildContext context) {
    // MediaQuery to get Device Width
    double width = MediaQuery.of(context).size.width * 0.44;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              backgroundColor: Color(0xff24dcbb),
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                    "Bienes",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontWeight: FontWeight.w300),
                  ),
                  background: Image.asset("assets/background/p.jpg",fit: BoxFit.cover),
              ),
            ),
          ];
        },
        // Main List View With Builder
        body: ListView.builder(
          itemCount: imgList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // This Will Call When User Click On ListView Item
                //showDialogFunc(context, imgList[index], titleList[index], descList[index]);
              },
              // Card Which Holds Layout Of ListView Item
              child: Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 80,
                      height: 80,
                      child: Image.asset(imgList[index]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: width,
                            child: Text(
                              titleList[index], // tituloo
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: width,
                            child: Text(
                              descList[index], // descripcion
                              maxLines: 3,
                              style: TextStyle(
                                  fontSize: 10, color: Colors.grey[500]),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: width,
                            child: Text(
                              autList[index], // autor
                              maxLines: 3,
                              style: TextStyle(
                                  fontSize: 10, color: Colors.grey[500]),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: width,
                            child: Text(
                              fechList[index], // fecha
                              maxLines: 3,
                              style: TextStyle(
                                  fontSize: 10, color: Colors.grey[500]),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context){
                            return HomeAdminScreen();
                          }),
                        );
                      },
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          alignment: Alignment.center,
                          height: 90,//52
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset("assets/icons/descargar.svg"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
