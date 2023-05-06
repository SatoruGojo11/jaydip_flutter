import 'package:flutter/material.dart';

class Gdview extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GDApp();
  }
}

class GDApp extends State<Gdview> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gridview App',
          style: TextStyle(
            fontSize: 30,
            color: Colors.yellowAccent,
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
        60,
          (index) => Center(
            child: OutlinedButton(
              onPressed: () {
                showsnkbar(context, index);
              },
              child: Expanded(child: Image.asset('assets/image/$index.jpg')),
            ),
            ),
          ),
        ),
    );
  }

  showsnkbar(ctx, data) {
    var snk = SnackBar(
      content: Text('$data'),
      backgroundColor: Colors.amber,
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
