import 'package:flutter/material.dart';
import 'package:iknow/screens/login/login_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'My app',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData( 
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}