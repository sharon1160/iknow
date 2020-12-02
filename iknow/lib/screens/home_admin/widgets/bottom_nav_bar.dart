import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iknow/screens/login/login_screen.dart';
import 'package:iknow/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context)  {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical:10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            tittle: "Log out",
            svgScr: "assets/icons/back.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context){
                  return LoginScreen();
                }),
              );
            },
          ),
          BottomNavItem(
            tittle: "Settings",
            svgScr: "assets/icons/Settings.svg",
            isActive: true,
          ),
        ],
      )
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgScr;
  final String tittle;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    Key key,
    this.svgScr,
    this.tittle,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            svgScr, 
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            tittle, 
            style: TextStyle(color: isActive ? kActiveIconColor: kTextColor,),
          ),
        ],
      ),
    );
  }
}