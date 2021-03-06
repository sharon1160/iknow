import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iknow/screens/home/widgets/bottom_nav_bar.dart';
import 'package:iknow/constants.dart';
import 'package:iknow/screens/plantillas/plantillas_screen.dart';
import 'package:iknow/screens/home/widgets/category_card.dart';
import 'package:iknow/screens/mis documentos/mis_documentos_screen.dart';
import 'package:iknow/screens/documentos recientes/documentos_recientes_screen.dart';

class HomeScreen extends StatefulWidget {

  static String id = 'home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lista de Documentos',
      theme: new ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
        //primarySwatch: Colors.blue,
      ),
      home: HomeScreen2(),
    );
  }
}

class HomeScreen2 extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    var size = MediaQuery.of(context)
        .size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xFF81f2dd),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/Img/image2.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0xff24dcbb),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text(
                    "Welcome to iKnow !",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.w300),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child:  Material(
                      color: Colors.transparent,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                        ),
                        child: Material(
                          elevation: 3.0,
                          shadowColor: Colors.grey,
                          borderRadius: BorderRadius.circular(100),
                          child: TextField(
                            style: TextStyle(fontSize: 15, color: Colors.black87),
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search, color: Colors.black38),
                              hintText: "Search here",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    )
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Documentos Recientes",
                          svgSrc: "assets/Img/reloj.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context){
                                return DocumentosRecientesScreen();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Plantillas",
                          svgSrc: "assets/Img/icons8-formularios-de-google-48.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context){
                                return PlantillasScreen();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Mis Documentos",
                          svgSrc: "assets/Img/guardar.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context){
                                return MisDocumentosScreen();
                                //return HomePage();
                                //return SearchPage();
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}






