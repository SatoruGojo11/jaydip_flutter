import 'package:flutter/material.dart';

class TFApp extends StatefulWidget {
  const TFApp({Key? key}) : super(key: key);

  @override
  State<TFApp> createState() => _TFAppState();
}

class _TFAppState extends State<TFApp> {
  // var name = '';
  TextEditingController uname = TextEditingController();
  TextEditingController emailid = TextEditingController();
  TextEditingController password = TextEditingController();

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
        children: [
          Container(
            alignment: Alignment.center,
            height: 100,
            width: 100,
            child: Icon(Icons.account_circle,size: 120),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: showtf("Your Name", "Enter Your name", uname),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: showtf("Email-id", "Enter Your email-id", emailid),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: showtf("Password", "Enter Your Password", password),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: ElevatedButton(
              onPressed: () => setState(() {}),
              child: Text('Submit'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child:
            Text(uname.text.isEmpty ? '' : 'Your name is ${uname.text}.'),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: Text(emailid.text.isEmpty ? '' : 'Your Email-id is ${emailid.text}.'),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: Text(password.text.isEmpty ? '' : 'Your Password is ${password.text}.'),
          ),
        ],
      ),
    );
  }

  showtf(label, hint, ctrl) {
    var form = Padding(
      padding: EdgeInsets.only(top: 8),
      child: TextField(
        // onSubmitted: (value) {
        //   setState(() {
        //     name = value;
        //   });
        // },
        //     onChanged: (value){
        //       setState(() {
        //         name = value;
        //       });
        //     },
        controller: ctrl,
        decoration: InputDecoration(
          hoverColor: Colors.black,
          border: OutlineInputBorder(),
          labelText: '$label',
          hintText: '$hint',
        ),

      ),
    );
    return form;
  }
}