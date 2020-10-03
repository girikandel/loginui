import 'package:flutter/material.dart';
import 'package:login_UI/Pages/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //Initial obscure
  bool _obscureText = true;
  bool _visibilityIcon = true;

  //togg le for obsecure text and visibility icon
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
      _visibilityIcon = !_visibilityIcon;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          //Background Image
          Image.asset(
            "assets/image.jpg",
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //First Text
                  Text(
                    "Flutter Login UI",
                    style: TextStyle(fontSize: 35, color: Colors.cyan),
                  ),
                  SizedBox(height: 20),

                  //Flutter Logo
                  FlutterLogo(
                    size: 150,
                  ),
                  SizedBox(height: 20),

                  //Email field
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: "Enter email",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),

                  //PAssword Field
                  TextField(
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.vpn_key),
                        labelText: "Enter password",
                        border: OutlineInputBorder(),

                        //hide and see password
                        suffixIcon: IconButton(
                            icon: _visibilityIcon
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.visibility),
                            onPressed: () {
                              _toggle();
                            })),
                  ),

                  SizedBox(height: 20),

                  //Login Button
                  RaisedButton(
                    splashColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.orange),
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text("Login"),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
