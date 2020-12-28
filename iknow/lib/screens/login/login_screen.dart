import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:iknow/controllers/authentications.dart';
import 'package:iknow/screens/login/components/already_have_an_account.dart';
import 'package:iknow/screens/signup/signup_screen.dart';
import 'package:iknow/screens/home/home_screen.dart'; // USUARIO COMUN
//import 'package:iknow/screens/home_admin/home_admin_screen.dart'; // ADMINISTRADOR
import 'package:firebase_auth/firebase_auth.dart';

void _signIn() async {
  try{
    final creds = await googleSignIn();
  }catch(e){
    print('No se puede logear: $e');
  }
}

final _auth = FirebaseAuth.instance;

class LoginScreen extends StatefulWidget {
   static String id = 'login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  String email;
  String password;
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
                  height: 150.0,
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
                press: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context){
                        return SignUpScreen();
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: 40.0,),
              SignInButton(
                Buttons.Google,
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical:8), //anchura
                // onPressed: () => googleSignIn().whenComplete(() async {
                //   User user = await FirebaseAuth.instance.currentUser;
                //
                //   Navigator.of(context).pushReplacement(MaterialPageRoute(
                //       builder: (context) => HomeScreen()));
                // }),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: _signIn,
              ),

            ],

          ),
        ),
      ),
    );
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
                email = value;
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
                hintText: '',
                labelText: 'Password',
                suffixIcon: Icon(
                  Icons.visibility,
                  color: Colors.grey[600],
                ),
              ),
              onChanged: (value){
                password = value;
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
              color: Color(0xff24dcbb),
              onPressed:() async {
                print(email);
                /*
          try{

            print('probando---------------------------------------------------');
            final user = await _auth.signInWithEmailAndPassword(
                email: email, password: password);
            if(user != null){
              print('correcto---------------------------------------------------');
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (context){
                    return HomeScreen();
                  },
                ),
              );
            }
          }catch(e){
            print('error****************************************************');
            print(e);}
          */
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context){
                      return HomeScreen(); // USUARIO COMUN
                      //return HomeAdminScreen(); // ADMINISTRADOR
                    },
                  ),
                );
              }
          );
        }
    );
  }


}







