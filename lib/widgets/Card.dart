import 'package:flutter/material.dart';

class CardUse extends StatefulWidget {
  const CardUse({super.key});

  @override
  State<StatefulWidget> createState() {
    return CardApp();
  }
}

class CardApp extends State<CardUse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Card',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
          ),
        ),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Card(
              elevation: 20,
              shadowColor: Colors.red,
              child: Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(5.0),
              elevation: 20,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              color: Colors.redAccent,
              child: InkWell(
                borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                splashColor: Colors.amber,
                onTap: () {},
                child: Container(
                  height: 100,
                  width: 300,
                  color: Colors.transparent,
                  child: Center(
                    child: Text(
                      'Cord Widget',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
