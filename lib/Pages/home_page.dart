import 'package:flutter/material.dart';
import 'package:login_UI/Pages/login_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBAr
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.cyan[200]),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          )
        ],
      ),

      //Body
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome To Home Page.",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          SizedBox(height: 20),
          RaisedButton(
            splashColor: Colors.red,
            child: Text("Logout"),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.orange
              ),
              borderRadius: BorderRadius.circular(30)
            ),
          )
        ],
      )),
    );
  }
}
