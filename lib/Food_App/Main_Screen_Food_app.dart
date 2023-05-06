import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainFoodApp extends StatefulWidget {
  const MainFoodApp({Key? key}) : super(key: key);

  @override
  State<MainFoodApp> createState() => _MainFoodAppState();
}

class _MainFoodAppState extends State<MainFoodApp> {
  var name = GlobalKey<FormState>();
  var psw = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/image/foodapp/Background.jpg',
            fit: BoxFit.fill,
            width: double.maxFinite,
            height: double.maxFinite,
          ),
          ListView(
            children: [
              Column(
                children: [
                  SizedBox(height: 100),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Welcome,',
                        style: GoogleFonts.aladin(
                          textStyle: TextStyle(
                            fontSize: 60,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 100),
                  TextFormField(
                    key: name,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "User name can't be Empty";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Your Name",
                      prefixIcon: Icon(Icons.account_circle),
                      prefixIconColor: Colors.black,
                      labelText: "Your Name",
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 3,
                        ),
                      ),
                      hoverColor: Colors.lightGreenAccent,
                      enabled: true,
                    ),
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    key: psw,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password can't be Empty";
                      } else {
                        return null;
                      }
                    },
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      prefixIcon: Icon(Icons.lock),
                      prefixIconColor: Colors.black,
                      labelText: "Your Password",
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 3,
                        ),
                      ),
                      hoverColor: Colors.lightGreenAccent,
                      enabled: true,
                    ),
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Submit'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
