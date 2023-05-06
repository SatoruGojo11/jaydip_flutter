import 'package:flutter/material.dart';

class StepperApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StepperAppState();
  }
}

class StepperAppState extends State<StepperApp> {
  var Steps = [
    Step(
      // label: CircleAvatar(
      //   child: Image.network(
      //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTXJwIR5ILSSk9O1sp0ilbQnQ4c8em20GUCfmmXkUQ5mq1ZSos7bqE6o0LhIVcZ7F7zdw&usqp=CAU'),
      // ),
      title: Text('Iron Man'),
      content: Text('Go to 2nd'),
    ),
    Step(
      // label: CircleAvatar(
      //   child: Image.network(
      //       'https://www.idg.se/editorial/980/path/1.760092.1639570023!imageUploader/981490532.jpg'),
      // ),
      title: Text('Spider Man'),
      content: Text('Go to 3rd'),
    ),
    Step(
      // label: CircleAvatar(
      //   child: Image.network(
      //       'https://www.hollywoodreporter.com/wp-content/uploads/2022/06/Doctor-Strange-in-the-Multiverse-of-Madness-Digital-Download-Amazon-EMBED-2022.jpg?w=608'),
      // ),
      title: Text('Dr. Strange'),
      content: Text('Go to 4th'),
    ),
    Step(
      // label: CircleAvatar(
      //   child: Image.network(
      //       'https://wallpaperaccess.com/full/54038.png'),
      // ),
      title: Text('Black Panther'),
      content: Text('Go to 5th'),
    ),
    Step(
      // label: CircleAvatar(
      //   child: Image.network(
      //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ9E5HamQ9_mhx6T_wpAvXxDtGkbQKgBf3azyk3P06Gq2AtMErSbx4U2WLmj8i-5R_scA&usqp=CAU'),
      // ),
      title: Text('Black Widow'),
      content: Text('Go to 6th'),
    ),
    Step(
      // label: CircleAvatar(
      //   child: Image.network(
      //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEUU8v-Hp07hYcxuOcwaweEzPxGERuzvyJaQr5W-9h30DAEIHX2ptIyICKFNEajIhRUVM&usqp=CAU'),
      // ),
      title: Text('Thor'),
      content: Text('Go to 7th'),
    ),
  ];

  var currentstep = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stepper App',
          style: TextStyle(
            fontSize: 30,
            color: Colors.deepOrange,
          ),
        ),
        centerTitle: true,
      ),
      body: Stepper(
        steps: Steps,
        currentStep: currentstep,
        onStepContinue: () {
          if (currentstep < Steps.length - 1) {
            setState(() {
              currentstep++;
            });
          }
        },
        onStepCancel: (){
          if(currentstep > 0){
            setState(() {
              currentstep--;
            });
          }
        },
      ),
    );
  }
}