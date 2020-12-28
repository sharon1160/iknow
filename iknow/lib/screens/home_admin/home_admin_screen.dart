import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iknow/screens/home/widgets/bottom_nav_bar.dart';
import 'package:iknow/constants.dart';
import 'package:iknow/screens/home/widgets/category_card.dart';
import 'package:iknow/screens/bienes_admin/bienes_admin_screen.dart';
import 'package:iknow/screens/servicios_admin/servicios_admin_screen.dart';

class HomeAdminScreen extends StatefulWidget {

  static String id = 'home_admin';

  @override
  _HomeAdminScreenState createState() => _HomeAdminScreenState();
}

class _HomeAdminScreenState extends State<HomeAdminScreen> {
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
      home: HomeAdminScreen2(),
    );
  }
}

class HomeAdminScreen2 extends StatelessWidget{
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
                    margin: EdgeInsets.symmetric(vertical: 30),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        icon: SvgPicture.asset("assets/icons/search.svg"),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Bienes",
                          svgSrc: "assets/Img/bienes.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context){
                                return BienesAdminScreen();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Servicios",
                          svgSrc: "assets/Img/servicios.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context){
                                return ServiciosAdminScreen();
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






