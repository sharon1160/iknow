import 'package:flutter/material.dart';
import './especificacion_form_1.dart';
import './especificacion_form_2.dart';
import './especificacion_form_3.dart';

class MyApp2 extends StatefulWidget {
  @override
  _MyApp2State createState() => new _MyApp2State();
}

Map<int, Color> color ={
  50:Color.fromRGBO(136,14,79, .1),
  100:Color.fromRGBO(136,14,79, .2),
  200:Color.fromRGBO(136,14,79, .3),
  300:Color.fromRGBO(136,14,79, .4),
  400:Color.fromRGBO(136,14,79, .5),
  500:Color.fromRGBO(136,14,79, .6),
  600:Color.fromRGBO(136,14,79, .7),
  700:Color.fromRGBO(136,14,79, .8),
  800:Color.fromRGBO(136,14,79, .9),
  900:Color.fromRGBO(136,14,79, 1),
};

class _MyApp2State extends State<MyApp2> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
      body: Theme(
        data: ThemeData(
          accentColor: Color(0xff24dcbb),
          primarySwatch: MaterialColor(0xff24dcbb, color),
          colorScheme: ColorScheme.light(
            primary: Color(0xff24dcbb)
          )
        ),
        child: new Stepper(
          type: StepperType.horizontal,// important
          currentStep: _currentStep,
          onStepTapped: (int step) => setState(() => _currentStep = step),
          onStepContinue: _currentStep < 2 ? () => setState(() => _currentStep += 1) : null, // continue
          onStepCancel: _currentStep > 0 ? () => setState(() => _currentStep -= 1) : null, // cancel
          steps: <Step>[
            new Step(
              title: new Text('Paso 1'),
              content: EspecificacionForm(),//-------->
              isActive: _currentStep >= 0,
              state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
            ),
            new Step(
              title: new Text('Paso 2'),
              content: EspecificacionForm2(),
              isActive: _currentStep >= 0,
              state: _currentStep >= 1 ? StepState.complete : StepState.disabled,
            ),
            new Step(
              title: new Text('Paso 3'),
              content: EspecificacionForm3(),
              isActive: _currentStep >= 0,
              state: _currentStep >= 2 ? StepState.complete : StepState.disabled,
            ),
          ],
        ),
      ),
    );
  }
}
