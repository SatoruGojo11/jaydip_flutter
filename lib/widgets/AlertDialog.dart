import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  const Alert({Key? key}) : super(key: key);

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Alert',
          style: TextStyle(
            fontSize: 25,
            color: Colors.yellowAccent,
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showalert(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOMg-wuOBwYSZkyUWIuhLU6sm2p7TpmBRuo0hNkEUN&s',
            ),
          ),
        ),
      ),
    );
  }

  showalert(BuildContext context) {
    // ************* Alert Dialog ************
    // var alt = AlertDialog(
    //   title: Text('Delete the Image....'),
    //   content: Text('Are you sure??'),
    //   actions: [
    //     TextButton(
    //       onPressed: () {
    //         Navigator.of(context).pop();
    //       },
    //       child: Text(
    //         'YES',
    //       ),
    //     ),
    //     TextButton(
    //       onPressed: () {
    //         Navigator.of(context).pop();
    //       },
    //       child: Text(
    //         'NO',
    //       ),
    //     ),
    //   ],
    // );

    // ************* Simple Dialog ************
    // var alt1 = SimpleDialog(
    //   title: const Text('Delete the Image....'),
    //   children: [
    //     Padding(
    //       padding: EdgeInsets.only(left: 25.0),
    //       child: Text(
    //         'Are you sure??',
    //         style: TextStyle(
    //           fontSize: 20,
    //         ),
    //       ),
    //     ),
    //     ButtonBar(
    //       children: [
    //         TextButton(
    //           onPressed: () {
    //             Navigator.of(context).pop();
    //           },
    //           child: const Text(
    //             'YES',
    //           ),
    //         ),
    //         TextButton(
    //           onPressed: () {
    //             Navigator.of(context).pop();
    //           },
    //           child: const Text(
    //             'NO',
    //           ),
    //         ),
    //       ],
    //     ),
    //   ],
    // );

    // ************* Dialog ************
    var alt2 = Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Delete the Image..',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Text(
              'Are you sure??',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          ButtonBar(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'YES',
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'NO',
                ),
              ),
            ],
          ),
        ],
      ),
    );

    showDialog(
      context: context,
      // builder: (context) => alt,
      // builder: (context) => alt1,
      builder: (context) => alt2,
      barrierDismissible: false,
    );
  }
}
