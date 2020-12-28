import 'package:flutter/material.dart';
import 'package:iknow/screens/mis documentos/mis_documentos_screen.dart';


class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int _groupValue = 0;

  String _distritoVal;
  List _distritos = [
    'Coporaque', 'Caylloma', 'Chivay', 'Tuti', 'Achoma'
  ];

  RangeValues ranges = RangeValues(2000,2020);
  RangeLabels labels = RangeLabels("Start", "End");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filtrar"),
        backgroundColor: Color(0xff24dcbb),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical:16,horizontal:20),
            child: Text(
              "Tipo de documento", 
              style: Theme.of(context).textTheme.subtitle2),
          ),
          Row(
            children: <Widget>[
              Row(
                children: <Widget> [
                  Radio(
                    groupValue: _groupValue,
                    value: 0,
                    onChanged: (t) {
                      setState(() {
                        _groupValue = t;
                      });
                    },
                  ),
                  Text("Todos")
                ],
              ),
              Row(
                children: <Widget> [
                  Radio(
                    groupValue: _groupValue,
                    value: 1,
                    onChanged: (t) {
                      setState(() {
                        _groupValue = t;
                      });
                    },
                  ),
                  Text("Bienes")
                ],
              ),
              Row(
                children: <Widget> [
                  Radio(
                    groupValue: _groupValue,
                    value: 2,
                    onChanged: (t) {
                      setState(() {
                        _groupValue = t;
                      });
                    },
                  ),
                  Text("Servicios")
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:10,horizontal:20),
            child: Text(
              "Código del Documento", 
              style: Theme.of(context).textTheme.subtitle2),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:10,horizontal:20),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Ej. N° 001-2020-MDC/G-MCR',
                labelStyle: TextStyle(fontSize: 8.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:10,horizontal:20),
            child: Text(
              "Destinatario", 
              style: Theme.of(context).textTheme.subtitle2),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:10,horizontal:20),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Ej. Juan Perez Alvela',
                labelStyle: TextStyle(fontSize: 10.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:10,horizontal:20),
            child: Text(
              "Distrito del Destinatario", 
              style: Theme.of(context).textTheme.subtitle2),
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical:10,horizontal:20),
            child: Text(
              "Creado entre", 
              style: Theme.of(context).textTheme.subtitle2),
          ),
          SizedBox(height:10.0),
          RangeSlider(
            onChanged: (RangeValues t) {
              setState(() {
                ranges = t;
                labels = RangeLabels(t.start.toInt().toString(), t.end.toInt().toString());
              });
            },
            labels: labels,
            values: ranges,
            min: 2000,
            max: 2020,
            divisions: 20,
            inactiveColor: Colors.grey,
            activeColor: Color(0xff24dcbb),
          ),
          Container(child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 114.0, vertical:14),
              child: RaisedButton(
                color: Color(0xff24dcbb),
                child: Text(
                  "Aplicar",
                  style: TextStyle(
                    color: Colors.white, 
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context){
                        return MisDocumentosScreen();
                      },
                    ),
                  );
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
