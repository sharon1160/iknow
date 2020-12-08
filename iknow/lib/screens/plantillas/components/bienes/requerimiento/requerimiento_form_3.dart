import 'package:flutter/material.dart';

class RequerimientoForm3 extends StatefulWidget {
  @override
  _RequerimientoForm3State createState() => _RequerimientoForm3State();
}

class _RequerimientoForm3State extends State<RequerimientoForm3> {
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
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                      child: Text('Plazo de Servicio'),
                    ),
                    TextFormField(
                      decoration: 
                          InputDecoration(
                            labelText: 'Plazo de Servicio',
                            labelStyle: TextStyle(fontSize: 12.0),
                          ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                      child: Text('Forma de Pago'),
                    ),
                    TextFormField(
                      decoration: 
                          InputDecoration(
                            labelText: 'Forma de Pago',
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