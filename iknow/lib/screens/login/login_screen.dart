import 'package:flutter/material.dart';
import 'package:iknow/screens/login/components/already_have_an_account.dart';

class LoginScreen extends StatefulWidget {

  static String id = 'login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child : Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "L O G I N",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 35.0,),
              Flexible(
                child: Image.asset('assets/icons/login.png',
                  height: 50.0,
                  scale: 1.0,
                ),
              ),
              SizedBox(height: 15.0,),
              _userTextField(),
              SizedBox(height: 15.0,),
              _passwordTextField(),
              SizedBox(height: 20.0,),
              _buttonLogin(),
              SizedBox(height: 10.0,),
              AlreadyHaveAnAccountChecked(
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}


Widget _userTextField(){
  return StreamBuilder(
    builder: (BuildContext context, AsyncSnapshot snapshot){
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration( 
            icon: Icon(Icons.email),
            hintText: 'example@gmail.com',
            labelText: 'Email',
          ),
          onChanged: (value){
            // brbrbr
          },
        ),
      );
    }
  );
}

_passwordTextField(){
    return StreamBuilder(
    builder: (BuildContext context, AsyncSnapshot snapshot){
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: InputDecoration( 
            icon: Icon(Icons.lock),
            hintText: '********',
            labelText: 'Password',
            suffixIcon: Icon(
              Icons.visibility,
              color: Colors.grey[600],
            ),
          ),
          onChanged: (value){
            // brbrbr
          },
        ),
      );
    }
  );

}

Widget _buttonLogin(){
  return StreamBuilder(
    builder: (BuildContext context, AsyncSnapshot snapshot){
      return RaisedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 114.0, vertical:14),
          child: Text('LOGIN',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        elevation: 10.0,
        color: Colors.tealAccent[400],
        onPressed:(){}
      );
    }
  );
}