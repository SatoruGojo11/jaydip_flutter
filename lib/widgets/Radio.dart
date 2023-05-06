import 'package:flutter/material.dart';

class RadioUse extends StatefulWidget {
  const RadioUse({Key? key}) : super(key: key);

  @override
  State<RadioUse> createState() => _RadioUseState();
}

class _RadioUseState extends State<RadioUse> {
  int? gvalue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Radio Use',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            // *********************  Single Radio  *************************
            // Radio(
            //   value: 1,
            //   groupValue: gvalue,
            //   onChanged: (value) {
            //     setState(() {
            //       gvalue = value;
            //     });
            //   },
            // ),
            // Radio(
            //   value: 2,
            //   groupValue: gvalue,
            //   onChanged: (value) {
            //     setState(() {
            //       gvalue = value;
            //     });
            //   },
            // ),

            SizedBox(
              height: 30,
            ),

            // **************  RadioListTile  *****************
            showradio(1, 'Male', 'assets/image/Male.jpg'),
            SizedBox(height: 10),
            showradio(2, 'Female', 'assets/image/Female.jpg'),
            SizedBox(height: 10),
            showradio(3, 'Prefer Not to say', 'assets/image/trans.jpg'),
            SizedBox(height: 30),
            SizedBox(
              height: 30,
              width: 80,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                onPressed: () {},
                child: Text(
                  'Submit',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  showradio(v1, gender, image) {
    var rlt = RadioListTile(
      value: v1,
      groupValue: gvalue,
      onChanged: (value) {
        setState(() {
          gvalue = value;
        });
      },
      title: Text("$gender"),
      tileColor: Colors.yellow,
      activeColor: Colors.purple,
      secondary: CircleAvatar(backgroundImage: AssetImage('$image')),
    );
    return rlt;
  }
}
