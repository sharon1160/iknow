import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:iknow/screens/plantillas/components/docs.dart';


class PlantillasScreen extends StatefulWidget {

  static String id = 'plantillas';

  @override
  _PlantillasScreenState createState() => _PlantillasScreenState();
}

class _PlantillasScreenState extends State<PlantillasScreen> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Lista de Plantillas',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
              title: Text('Lista de Plantillas')
          ),
          body: new ListView(
              children: plantillas.map(_buildItem).toList(),
          )
      )
    );
  }
}

Widget _buildItem(Doc doc) {
  return new ListTile(
      title: new Text(doc.name),
      subtitle: new Text('Documento: ${doc.doc}'),
      trailing: new Text('Fecha: ${doc.fecha}'),
      leading: new Icon(Icons.person),
      onTap: (){
        print(doc.name);
      },
  );
}