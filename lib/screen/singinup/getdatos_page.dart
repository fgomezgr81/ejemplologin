import 'package:flutter/material.dart';
import 'package:login/screen/singin/login_page.dart';

class RecuperarPage extends StatefulWidget {
  @override
  _RecuperarPageState createState() => _RecuperarPageState();
}

class _RecuperarPageState extends State<RecuperarPage> {
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
            _logo(),
            _body(),
            _regresar(),
          ],
        ),
      ),
    );
  }

  Widget _logo() {
    return Positioned(
      top: 0,
      child: Container(
        padding: EdgeInsets.all(40),
        child: Text(
          'Logo',
          style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _body() {
    return Positioned(
        bottom: 0,
        child: Container(
          height: 500,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(120),
                  topRight: Radius.circular(120))),
          child: Container(
            padding: EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Recuperar credenciales'.toUpperCase(),
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  decoration: InputDecoration(hintText: 'Correo electronico'),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Enviar',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.red,
                      child: Icon(Icons.navigate_next),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Widget _regresar() {
    return Positioned(
      bottom: 140,
      left: 40,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        },
        child: Text(
          'Login',
          style: TextStyle(decoration: TextDecoration.underline, fontSize: 20),
        ),
      ),
    );
  }
}
