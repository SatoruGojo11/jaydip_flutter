import 'package:flutter/material.dart';
import 'package:jaydip_flutter/Statemanagement/ProviderStateManagement/Numberchangeprovider.dart';
import 'package:provider/provider.dart';

import '../../main.dart';
import 'Secondpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Numberchangeprovider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: text(
            'Add Numbers Using Provider State Management',
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
        body: Column(
          children: [
            SizedBox(height: 15),
            text(
              value.digits.last,
              Colors.black,
              25.0,
              FontWeight.bold,
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemCount: value.digits.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: text(
                      value.digits[index],
                      Colors.black,
                      25.0,
                      FontWeight.normal,
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Secondpage(),
                ),
              ),
              child: text(
                'Second Screen',
                Colors.black,
                25.0,
                FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
