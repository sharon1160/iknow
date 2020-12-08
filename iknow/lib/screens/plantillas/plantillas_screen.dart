import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iknow/screens/plantillas/components/bienes/plantillas_bienes.dart';
import 'package:iknow/screens/plantillas/components/servicios/plantillas_servicios.dart';


// Main Stateful Widget Start
class PlantillasScreen extends StatefulWidget {
  @override
  _PlantillasScreenState createState() => _PlantillasScreenState();
}

class _PlantillasScreenState extends State<PlantillasScreen> {
  // Title List Here
  var titleList = [
    "Requerimiento de Bienes",
    //"Especificaciones Técnicas",
    "Requerimiento de Servicios"
    //"Términos de Referencia"
  ];

  // Description List Here
  var descList = [
    "+ Especificaciones Técnicas.",
    //"para las adquisiciones de bienes.",
    "+ Términos de Referencia."
    //"para la contratación de servicios en general."
  ];

  // Image Name List Here
  var imgList = [
    "assets/iconos/icons8-reanudar-plantilla-50.png",
    "assets/iconos/icons8-reanudar-plantilla-50.png"
  ];

  var rutas = [
    PlantillasBienesScreen(),
    PlantillasServiciosScreen()
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
                    "Plantillas",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontWeight: FontWeight.w300),
                  ),
                  background: Image.asset("assets/background/plant_2.jpg",fit: BoxFit.cover),
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
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context){
                            return rutas[index];
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
                          child: SvgPicture.asset("assets/Img/lapiz_A.svg"),
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
