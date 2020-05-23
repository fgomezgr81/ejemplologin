import 'package:flutter/material.dart';
import 'package:login/screen/singinup/getdatos_page.dart';
import 'package:login/screen/singinup/logout_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget _logo() {
    return Positioned(
      top: 0,
      child: Container(
        padding: EdgeInsets.only(left: 40, top: 20),
        child: Text(
          "Logo",
          style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _background() {
    return Positioned(
      top: 0,
      child: Container(
        height: 180,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100.0),
              bottomRight: Radius.circular(100.0)),
        ),
      ),
    );
  }

  Widget _colorsbackgroung() {
    return Positioned(
      top: 0,
      child: Container(
        height: 160.0,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 214, 153, 255),
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(120),
                bottomLeft: Radius.circular(120),
                topRight: Radius.circular(120))),
      ),
    );
  }

  Widget _bodyinfo() {
    return Positioned(
      bottom: 0,
      child: Container(
        height: 500,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.only(topRight: Radius.circular(120))),
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Bienvenidos'.toUpperCase(),
                style: TextStyle(fontSize: 52, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(hintText: 'Usuario')),
              SizedBox(
                height: 20,
              ),
              TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(hintText: 'Contraseña')),
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.navigate_next,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _nextPage() {
    return Positioned(
      bottom: 60,
      left: 40,
      child: Row(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LogoutPage()));
            },
            child: Text(
              'Registrarse',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ),
          SizedBox(
            width: 160,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RecuperarPage()));
            },
            child: Text('Recuperar contraseña',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                )),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              color: Color.fromARGB(255, 255, 191, 128),
            ),
            _background(),
            _colorsbackgroung(),
            _logo(),
            _bodyinfo(),
            _nextPage()
          ],
        ),
      ),
    );
  }
}
