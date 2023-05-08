import 'package:flutter/material.dart';

class SliverappbarApp extends StatefulWidget {
  const SliverappbarApp({Key? key}) : super(key: key);

  @override
  State<SliverappbarApp> createState() => _SliverappbarAppState();
}

class _SliverappbarAppState extends State<SliverappbarApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              primary: true,
              expandedHeight: 150,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'Sliver App Bar',
                  style: TextStyle(fontSize: 20, color: Colors.yellowAccent),
                ),
                centerTitle: true,
                background: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRZWu0kRjFAYGG3FVDRGBQd4SZOtr7B1qd73mNHmpC&s',
                  fit: BoxFit.fill,
                ),
              ),
              floating: true,
              pinned: false,
              // snap: true,
            ),
            SliverFillRemaining(
              fillOverscroll: true,
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ListTile(
                        tileColor: Colors.deepOrange,
                        title: Text(
                          'User $index',
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
                        ),
                        leading: Icon(Icons.account_circle,
                            color: Colors.yellowAccent),
                        trailing: Icon(Icons.work, color: Colors.yellowAccent),
                      ),
                      Divider(height: 8),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
