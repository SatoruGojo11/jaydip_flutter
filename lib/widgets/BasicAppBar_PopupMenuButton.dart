import 'package:flutter/material.dart';

class PopupButtonApp extends StatefulWidget {
  const PopupButtonApp({Key? key}) : super(key: key);

  @override
  State<PopupButtonApp> createState() => _PopupButtonAppState();
}

class _PopupButtonAppState extends State<PopupButtonApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Whatsapp',
        ),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text('New Group'),
                ),
                PopupMenuItem(
                  child: Text('New broadcast'),
                ),
                PopupMenuItem(
                  child: Text('Linked device'),
                ),
                PopupMenuItem(
                  child: Text('Starred messages'),
                ),
                PopupMenuItem(
                  child: Text('Payments'),
                ),
                PopupMenuItem(
                  child: Text('Settings'),
                ),
              ];
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.green,
        child: Row(
          children: [
            Container(
              height: 50,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Whatsapp',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            // SizedBox(width: 133),
            // IconButton(
            //   onPressed: () {},
            //   icon: Icon(
            //     Icons.camera_alt_outlined,
            //     color: Colors.white,
            //   ),
            // ),
            // IconButton(
            //   onPressed: () {},
            //   icon: Icon(
            //     Icons.search,
            //     color: Colors.white,
            //   ),
            // ),
            // PopupMenuButton(
            //   color: Colors.white,
            //   itemBuilder: (context) {
            //     return [
            //       PopupMenuItem(
            //         child: Text('New Group'),
            //       ),
            //       PopupMenuItem(
            //         child: Text('New broadcast'),
            //       ),
            //       PopupMenuItem(
            //         child: Text('Linked device'),
            //       ),
            //       PopupMenuItem(
            //         child: Text('Starred messages'),
            //       ),
            //       PopupMenuItem(
            //         child: Text('Payments'),
            //       ),
            //       PopupMenuItem(
            //         child: Text('Settings'),
            //       ),
            //     ];
            //   },
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
