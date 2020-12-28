import 'package:flutter/material.dart';

class EspecificacionForm2 extends StatefulWidget {
  @override
  _EspecificacionForm2State createState() => _EspecificacionForm2State();
}

class _EspecificacionForm2State extends State<EspecificacionForm2> {
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
                      child: Text('Lugar de Entrega'),
                    ),
                    TextFormField(
                      decoration: 
                          InputDecoration(
                            labelText: 'Direccion y horario',
                            labelStyle: TextStyle(fontSize: 12.0),
                          ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                      child: Text('Plazo de Entrega'),
                    ),
                    TextFormField(
                      decoration: 
                          InputDecoration(
                            labelText: 'Plazo de entrega en dias, semanas, meses',
                            labelStyle: TextStyle(fontSize: 12.0),
                          ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                      child: Text('Conformidad del Bien'),
                    ),
                    TextFormField(
                      decoration: 
                          InputDecoration(
                            labelText: '',
                            labelStyle: TextStyle(fontSize: 12.0),
                          ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                      child: Text('Forma y Condiciones de Pago'),
                    ),
                    TextFormField(
                      decoration: 
                          InputDecoration(
                            labelText: 'Pago único o parcial',
                            labelStyle: TextStyle(fontSize: 12.0),
                          ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                      child: Text('Garantía'),
                    ),
                    TextFormField(
                      decoration: 
                          InputDecoration(
                            labelText: '(Solo en caso de ser necesario)',
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