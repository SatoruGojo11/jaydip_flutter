import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  var nm;

  /* *************  Task 1 *********************
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                design(Colors.yellow),
                design(Colors.yellow),
                design(Colors.yellow),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                design(Colors.red),
                design(Colors.red),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                design(Colors.yellow),
                design(Colors.yellow),
                design(Colors.yellow),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                design(Colors.red),
                design(Colors.red),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                design(Colors.yellow),
                design(Colors.yellow),
                design(Colors.yellow),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                design(Colors.red),
                design(Colors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }

  design(Color color) {
    return Container(
      height: 100,
      width: 100,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      ),
    );
  }
}
*/

/* // **********   Task 2 ************

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Chess Board',
          style: TextStyle(
              color: Colors.yellowAccent
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  design(Colors.black),
                  design(Colors.white),
                  design(Colors.black),
                  design(Colors.white),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  design(Colors.white),
                  design(Colors.black),
                  design(Colors.white),
                  design(Colors.black),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  design(Colors.black),
                  design(Colors.white),
                  design(Colors.black),
                  design(Colors.white),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  design(Colors.white),
                  design(Colors.black),
                  design(Colors.white),
                  design(Colors.black),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  design(Colors.black),
                  design(Colors.white),
                  design(Colors.black),
                  design(Colors.white),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  design(Colors.white),
                  design(Colors.black),
                  design(Colors.white),
                  design(Colors.black),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  design(Colors.black),
                  design(Colors.white),
                  design(Colors.black),
                  design(Colors.white),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  design(Colors.white),
                  design(Colors.black),
                  design(Colors.white),
                  design(Colors.black),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  design(Color a) {
    return Expanded(
      child: Container(
        height: 100,
        width: 100,
        color: a,
      ),
    );
  }
 */

  // ************* Task 3 ***************

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Task 3',
            style: TextStyle(
              fontSize: 30,
              color: Colors.yellowAccent,
            ),
          ),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              padding: EdgeInsets.all(18),
              tooltip: ("Add_comment"),
              splashColor: Colors.redAccent,
              iconSize: 40,
              onPressed: () {
                showname();
              },
              icon: Icon(
                Icons.add_comment,
              ),
            ),
          ],
        ));
  }

  showname() {
    var ls = ListTile(
      title: Container(
        child: Text('Jaydip'),
      ),
    );
  }
}
