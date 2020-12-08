import 'package:flutter/material.dart';

class RequerimientoForm2 extends StatefulWidget {
  @override
  _RequerimientoForm2State createState() => _RequerimientoForm2State();
}

class _RequerimientoForm2State extends State<RequerimientoForm2> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return  Container(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
          child: Builder(
            builder: (context) => Form(
              key: _formkey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      decoration: 
                          InputDecoration(
                            labelText: 'Encabezado',
                            labelStyle: TextStyle(fontSize: 12.0),
                          ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                      child: Text('Objeto'),
                    ),
                    TextFormField(
                      decoration: 
                          InputDecoration(
                            labelText: 'Objeto',
                            labelStyle: TextStyle(fontSize: 12.0),
                          ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                      child: Text('Descripción a Detalle'),
                    ),
                    TextFormField(
                      decoration: 
                          InputDecoration(
                            labelText: 'N°',
                            labelStyle: TextStyle(fontSize: 12.0),
                          ),
                    ),
                    TextFormField(
                      decoration: 
                          InputDecoration(
                            labelText: 'Cantidad',
                            labelStyle: TextStyle(fontSize: 12.0),
                          ),
                    ),
                    TextFormField(
                      decoration: 
                          InputDecoration(
                            labelText: 'U.M.',
                            labelStyle: TextStyle(fontSize: 12.0),
                          ),
                    ),
                    TextFormField(
                      decoration: 
                          InputDecoration(
                            labelText: 'Descripción',
                            labelStyle: TextStyle(fontSize: 12.0),
                          ),
                    ),
                    TextFormField(
                      decoration: 
                          InputDecoration(
                            labelText: 'Monto Aproximado',
                            labelStyle: TextStyle(fontSize: 12.0),
                          ),
                    ),
                  ],
                ),
              )
            ),
          ),
        ),
      );
  }
}