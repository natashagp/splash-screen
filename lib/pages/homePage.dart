import 'package:flutter/material.dart';
import 'package:splash_screen/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.arrow_back,
        //     color: Colors.white,
        //   ),
        //   onPressed: () {},
        // ),
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(Icons.share),
        //     onPressed: () {},
        //     color: Colors.white,
        //   ),
        //   IconButton(
        //     icon: Icon(Icons.more_vert),
        //     onPressed: () {},
        //     color: Colors.white,
        //   )
        // ],
      ),
      body: Column(
        children: <Widget>[
          Image.asset(
            "assets/images/hamburguer.png",
            height: size.height * 0.25,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    buildTextField("Nome"),
                    buildTextField("Email"),
                    buildTextField("Senha"),
                    buildTextField("Confirmacao Senha"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildTextField(String label) {
  return Padding(
    padding: EdgeInsets.all(10.0),
    child: TextField(
      keyboardType: TextInputType.text,
      style: TextStyle(
        color: kPrimaryColor,
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: kPrimaryColor, fontSize: 20.0),
        border: OutlineInputBorder(),
      ),
    ),
  );
}
