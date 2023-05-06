import 'package:flutter/material.dart';

class TFFApp extends StatefulWidget {
  const TFFApp({Key? key}) : super(key: key);

  @override
  State<TFFApp> createState() => _TFFApState();
}

class _TFFApState extends State<TFFApp> {
  var name = GlobalKey<FormState>();
  var pwd = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Registration Form',
          style: TextStyle(
            fontSize: 30,
            color: Colors.amberAccent,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Icon(
              Icons.account_circle,
              size: 150,
            ),
          ),
          SizedBox(height: 10),
          Form(
            key: name,
            child: Column(
              children: [
                TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Your name",
                      labelText: "Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Name can't be Empty";
                      } else {
                        return null;
                      }
                    }),
              ],
            ),
          ),
          SizedBox(height: 10),
          Form(
            key: pwd,
            child: Column(
              children: [
                TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Your Password",
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password can't be Empty";
                      } else {
                        return null;
                      }
                    }),
              ],
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
