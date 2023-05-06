import "dart:math";
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerDesign extends StatelessWidget {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Amazon✨',
          style: TextStyle(fontSize: 30, color: Colors.deepOrange),
        ),
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.vertical(
        //     top: Radius.circular(30),
        //     bottom: Radius.circular(30),
        //   ),
        // ),
      ),
      body:
      // SafeArea(
      //   child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.black,
                height: 100,
                width: 100,
                child: Text(
                  'Otp :- ${randomNumber()}',
                  style: GoogleFonts.julee(
                    textStyle: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.purple,
                height: 100,
                width: 100,
                child: Text(
                  'Otp :- ${randomNumber()}',
                  style: TextStyle(
                    fontFamily: 'Lobster_Two',
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.black,
                height: 100,
                width: 100,
                child: Text(
                  'Otp :- ${randomNumber()}',
                  style: GoogleFonts.julee(
                    textStyle: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.purple,
                height: 100,
                width: 100,
                child: Text(
                  'Otp :- ${randomNumber()}',
                  style: TextStyle(
                    fontFamily: 'Lobster_Two',
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.black,
                height: 100,
                width: 100,
                child: Text(
                  'Otp :- ${randomNumber()}',
                  style: GoogleFonts.julee(
                    textStyle: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.purple,
                height: 100,
                width: 100,
                child: Text(
                  'Otp :- ${randomNumber()}',
                  style: TextStyle(
                    fontFamily: 'Lobster_Two',
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.black,
                height: 100,
                width: 100,
                child: Text(
                  'Otp :- ${randomNumber()}',
                  style: GoogleFonts.julee(
                    textStyle: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.purple,
                height: 100,
                width: 100,
                child: Text(
                  'Otp :- ${randomNumber()}',
                  style: TextStyle(
                    fontFamily: 'Lobster_Two',
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.black,
                height: 100,
                width: 100,
                child: Text(
                  'Otp :- ${randomNumber()}',
                  style: GoogleFonts.julee(
                    textStyle: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.purple,
                height: 100,
                width: 100,
                child: Text(
                  'Otp :- ${randomNumber()}',
                  style: TextStyle(
                    fontFamily: 'Lobster_Two',
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.black,
                height: 100,
                width: 100,
                child: Text(
                  'Otp :- ${randomNumber()}',
                  style: GoogleFonts.julee(
                    textStyle: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.purple,
                height: 100,
                width: 100,
                child: Text(
                  'Otp :- ${randomNumber()}',
                  style: TextStyle(
                    fontFamily: 'Lobster_Two',
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  randomNumber()
  {
    var number = (random.nextInt(10));
    return number;
  }
}
