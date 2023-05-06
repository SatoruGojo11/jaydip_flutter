import "dart:math";
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextAddWithGD extends StatelessWidget {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Amazon✨',
          style: TextStyle(fontSize: 30, color: Colors.yellowAccent),
        ),
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          color: Colors.greenAccent,
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    color: Colors.black,
                    height: 150,
                    width: 150,
                    child: Text(
                      'Otp :- ${randomNumber()}',
                      style: GoogleFonts.julee(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.blue,
                    height: 150,
                    width: 150,
                    child: Text(
                      'Otp :- ${randomNumber()}',
                      style: GoogleFonts.pacifico(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.blue,
                    height: 150,
                    width: 150,
                    child: Text(
                      'Otp :- ${randomNumber()}',
                      style: TextStyle(
                        fontFamily: 'Orbitron',
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                        alignment: Alignment.center,
                        color: Colors.yellowAccent,
                        height: 150,
                        width: 150,
                        child: Text(
                          'Otp :- ${randomNumber()}',
                          style: GoogleFonts.julee(
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.pinkAccent,
                    height: 150,
                    width: 150,
                    child: Text(
                      'Otp :- ${randomNumber()}',
                      style: GoogleFonts.pacifico(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.white,
                    height: 150,
                    width: 150,
                    child: Text(
                      'Otp :- ${randomNumber()}',
                        style: TextStyle(
                          fontFamily: 'Orbitron',
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  randomNumber() {
    var number = (999 + random.nextInt(9001));
    return number;
  }
}
