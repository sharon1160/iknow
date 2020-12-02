import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iknow/screens/home/home_screen.dart';


// Main Stateful Widget Start
class DocumentosRecientesScreen extends StatefulWidget {
  @override
  _DocumentosRecientesScreenState createState() => _DocumentosRecientesScreenState();
}

class _DocumentosRecientesScreenState extends State<DocumentosRecientesScreen> {
  // Title List Here
  var titleList = [
    "Requerimiento de Bienes N° 001-2020-MDC/G-MCR",
    "Requerimiento de Servicios N° 001-2020-MDC/G-MCR",
    "Requerimiento de Bienes N° 002-2020-MDC/G-MCR",
    "Requerimiento de Servicios N° 002-2020-MDC/G-MCR"
  ];

  // Description List Here
  var descList = [
    "+ Especificaciones Técnicas.",
    "+ Términos de Referencia.",
    "+ Especificaciones Técnicas.",
    "+ Términos de Referencia."
  ];

  // Fechas
  var fechList = [
    "Fecha: 01/12/2020",
    "Fecha: 29/11/2020",
    "Fecha: 28/11/2020",
    "Fecha: 27/11/2020"
  ];

  // Image Name List Here
  var imgList = [
    "assets/icons/recents.png",
    "assets/icons/recents.png",
    "assets/icons/recents.png",
    "assets/icons/recents.png"
  ];

  @override
  Widget build(BuildContext context) {
    // MediaQuery to get Device Width
    double width = MediaQuery.of(context).size.width * 0.44;
    return Scaffold(
      appBar: AppBar(
        // App Bar
        title: Text(
          "Documentos Recientes",
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(fontWeight: FontWeight.w300),
        ),
        elevation: 0,
        backgroundColor: Color(0xff24dcbb),
      ),
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
                          return HomeScreen2();
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
    );
  }
}
