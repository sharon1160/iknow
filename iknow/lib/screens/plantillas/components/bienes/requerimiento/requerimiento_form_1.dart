import 'package:flutter/material.dart';

class RequerimientoForm extends StatefulWidget {
  @override
  _RequerimientoFormState createState() => _RequerimientoFormState();
}

class _RequerimientoFormState extends State<RequerimientoForm> {
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
                            labelText: 'Destinatario',
                            labelStyle: TextStyle(fontSize: 12.0),
                          ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                      child: Text('Distrito del Destinatario'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        padding: EdgeInsets.only(left: 16.0, right: 16.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.5),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: DropdownButton(
                          hint: Text('Selecciona el distrito'),
                          dropdownColor: Colors.white,
                          elevation: 5,
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 36.0,
                          isExpanded: true,
                          value: _distritoVal,
                          style: TextStyle(color:  Colors.black, fontSize: 12.0),
                          onChanged: (value) {
                          setState(() {
                            _distritoVal = value;
                          });
                        },
                        items: _distritos.map((value){
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value)
                          );
                        }).toList(),
                        ),
                      )
                    ),
                    TextFormField(
                      decoration: 
                          InputDecoration(
                            labelText: 'CC',
                            labelStyle: TextStyle(fontSize: 12.0),
                          ),
                    ),
                    TextFormField(
                      decoration: 
                          InputDecoration(
                            labelText: 'Remitente',
                            labelStyle: TextStyle(fontSize: 12.0),
                          ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                      child: Text('Distrito del Remitente'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        padding: EdgeInsets.only(left: 16.0, right: 16.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.5),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: DropdownButton(
                          hint: Text('Selecciona el distrito'),
                          dropdownColor: Colors.white,
                          elevation: 5,
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 36.0,
                          isExpanded: true,
                          value: _distritoVal2,
                          style: TextStyle(color:  Colors.black, fontSize: 12.0),
                          onChanged: (value) {
                          setState(() {
                            _distritoVal2 = value;
                          });
                        },
                        items: _distritos.map((value){
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value)
                          );
                        }).toList(),
                        ),   
                      )
                    ),
                    TextFormField(
                      decoration: 
                          InputDecoration(
                            labelText: 'Asunto',
                            labelStyle: TextStyle(fontSize: 12.0),
                          ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(3.0),
                      child: TextFormField(
                        cursorColor: Color(0xff24dcbb),
                        readOnly: true,
                        onTap: () {
                          setState(() {
                            _selectDate(context);
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Fecha',
                          labelStyle: TextStyle(fontSize: 12.0),
                          hintText: (_date.toString()),
                        ),
                      ),
                    ),
                    /*
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                      child: Text('suscribete'),
                    ),
                    SwitchListTile(
                      title: const Text('Montly'),
                      value: _user.newsletter,
                      onChanged: (bool val) =>
                        setState(() => _user.newsletter = val),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                      child: Text('Interests')
                    ),
                    CheckboxListTile(
                      title: const Text('cooking'),
                      value: _user.passions[User.PassionCooking],
                      onChanged: (val){
                        setState(() => 
                        _user.passions[User.PassionCooking] = val);
                      },
                    ),
                    CheckboxListTile(
                      title: const Text('traveling'),
                      value: _user.passions[User.PassionTraveling],
                      onChanged: (val){
                        setState(() => 
                        _user.passions[User.PassionTraveling] = val);
                      },
                    ),
                    CheckboxListTile(
                      title: const Text('hiking'),
                      value: _user.passions[User.PassionHiking],
                      onChanged: (val){
                        setState(() => 
                        _user.passions[User.PassionHiking] = val);
                      },
                    )
                    ,*/
                  ],
                ),
              )
            ),
          ),
        ),
      );
  }
}