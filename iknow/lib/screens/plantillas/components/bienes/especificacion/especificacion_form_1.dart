import 'package:flutter/material.dart';

class EspecificacionForm extends StatefulWidget {
  @override
  _EspecificacionFormState createState() => _EspecificacionFormState();
}

class _EspecificacionFormState extends State<EspecificacionForm> {
  final _formkey = GlobalKey<FormState>();

  String _distritoVal;
  String _distritoVal2;
  List _distritos = [
    'Coporaque', 'Caylloma', 'Chivay', 'Tuti', 'Achoma'
  ];

  DateTime _date = DateTime.now();
  Future<Null> _selectDate (BuildContext context) async {
    DateTime _datePicker = await showDatePicker(
      context: context, 
      initialDate: _date, 
      firstDate: DateTime(2010), 
      lastDate: DateTime(2030),
      selectableDayPredicate: (DateTime val) => val.weekday == 6 || val.weekday == 7 ? false : true,
    );

    if(_datePicker != null && _datePicker != _date) {
      setState(() {
        _date = _datePicker;
        print(
          _date.toString(),
        );
      });
    }
  }
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
                            labelText: 'Unidad Orgánica',
                            labelStyle: TextStyle(fontSize: 12.0),
                          ),
                    ),
                    TextFormField(
                      decoration: 
                          InputDecoration(
                            labelText: 'Actividad',
                            labelStyle: TextStyle(fontSize: 12.0),
                          ),
                    ),
                    TextFormField(
                      decoration: 
                          InputDecoration(
                            labelText: 'Meta Presupuestaria',
                            labelStyle: TextStyle(fontSize: 12.0),
                          ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                      child: Text('Especificaciones Técnicas'),
                    ),
                    TextFormField(
                      decoration: 
                          InputDecoration(
                            labelText: 'Descripcion del Bien',
                            labelStyle: TextStyle(fontSize: 12.0),
                          ),
                    ),
                    TextFormField(
                      decoration: 
                          InputDecoration(
                            labelText: 'Unidad de Medida',
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
                            labelText: 'Dimensiones',
                            labelStyle: TextStyle(fontSize: 12.0),
                          ),
                    ),
                    TextFormField(
                      decoration: 
                          InputDecoration(
                            labelText: 'Tipo de Material',
                            labelStyle: TextStyle(fontSize: 12.0),
                          ),
                    ),
                    TextFormField(
                      decoration: 
                          InputDecoration(
                            labelText: 'Color',
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