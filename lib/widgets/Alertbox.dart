import 'package:flutter/material.dart';

class Alertapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Alertview();
  }
}

class Alertview extends State<Alertapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text(
          'Alert Box',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showalert(context);
          },
          child: const Text(
              'Alert Box',
              style: TextStyle(
                fontSize: 20,
                color: Colors.yellowAccent,
              ),
            ),
        ),
        ),
    );
  }

  showalert(BuildContext context) {
    var alert = AlertDialog(
      title: const Text(
        'Delete the box',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
      content: const Text('Are you sure?'),
      actions: [
        TextButton(
          onPressed: () {
            // Navigator.of(context).pop();
            Navigator.pop(context);
            showsnk1(context);
          },
          child: const Text('Yes'),
        ),
        TextButton(
          onPressed: () {
            // Navigator.of(context).pop();
            Navigator.pop(context);
            showsnk2(context);
          },
          child: const Text('No'),
        ),
      ],
    );

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => alert);
  }

  showsnk1(BuildContext context) {
    var snk = SnackBar(
      backgroundColor: Colors.black,
      elevation: 12,
      behavior: SnackBarBehavior.floating,
      content: const Text('Delete'),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {},
      ),
    );
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(snk);
  }

  showsnk2(BuildContext context) {
    var snk = SnackBar(
      backgroundColor: Colors.black,
      elevation: 12,
      behavior: SnackBarBehavior.floating,
      content: const Text("It's Okay..."),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {},
      ),
    );
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(snk);
  }
}
