import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../main.dart';
import 'Numberchangeprovider.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({super.key});

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Numberchangeprovider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: text(
            'Second Screen',
            Colors.black,
            25.0,
            FontWeight.bold,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            value.add();
          },
          child: Icon(
            Icons.add,
          ),
        ),
        body: SizedBox(
          child: Column(
            children: [
              text(
                value.digits.last,
                Colors.black,
                25.0,
                FontWeight.bold,
              ),
              Container(
                height: 200,
                width: double.maxFinite,
                child: ListView.builder(
                  itemCount: value.digits.length,
                  scrollDirection: Axis.horizontal,
                  itemExtent: double.maxFinite,
                  itemBuilder: (context, index) {
                    return text(
                      "${value.digits[index].toString()},",
                        Colors.black,
                        25.0,
                        FontWeight.normal,
                      );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
