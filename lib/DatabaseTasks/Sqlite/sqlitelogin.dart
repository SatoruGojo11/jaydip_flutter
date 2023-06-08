import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jaydip_flutter/main.dart';

class LoginScreensqlite extends StatefulWidget {
  const LoginScreensqlite({super.key});

  @override
  State<LoginScreensqlite> createState() => _LoginScreensqliteState();
}

class _LoginScreensqliteState extends State<LoginScreensqlite> {
  var _data = GlobalKey<FormState>();
  TextEditingController id = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController age = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(
        'Sqlite Database Use',
        Colors.deepOrange,
      ),
      body: Form(
        key: _data,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: TextFormField(
                  controller: id,
                  decoration: InputDecoration(
                    labelText: 'ID',
                    labelStyle: TextStyle(color: Colors.red),
                    hintText: 'Enter Your Customer ID',
                    hintStyle: TextStyle(color: Colors.red.withOpacity(0.8)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 3,
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^[0-9]+$'))
                  ],
                  validator: (value) {
                    if (value!.isEmpty)
                      return 'Please Enter Your Customer ID';
                    else
                      return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(color: Colors.red),
                    hintText: 'Enter Your Name',
                    hintStyle: TextStyle(color: Colors.red.withOpacity(0.8)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 3,
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.name,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-z]+$'))
                  ],
                  validator: (value) {
                    if (value!.isEmpty)
                      return 'Please Enter Your name';
                    else
                      return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    labelText: 'Email id',
                    labelStyle: TextStyle(color: Colors.red),
                    hintText: 'Enter Your Email id',
                    hintStyle: TextStyle(color: Colors.red.withOpacity(0.8)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 3,
                      ),
                    ),
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                        RegExp(r'^[a-zA-z0-9@.]+$'))
                  ],
                  validator: (value) {
                    if (value!.isEmpty)
                      return 'Please Enter Your email id';
                    else
                      return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextFormField(
                  controller: age,
                  decoration: InputDecoration(
                    labelText: 'Age',
                    labelStyle: TextStyle(color: Colors.red),
                    hintText: 'Enter Your Age',
                    hintStyle: TextStyle(color: Colors.red.withOpacity(0.8)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 3,
                      ),
                    ),
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^[0-9]+$'))
                  ],
                  validator: (value) {
                    if (value!.isEmpty)
                      return 'Please Enter Your age';
                    else
                      return null;
                  },
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text('Login'))
            ],
          ),
        ),
      ),
    );
  }
}
