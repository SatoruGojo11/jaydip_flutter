import 'package:flutter/material.dart';

// ignore: camel_case_types
class typesbutton extends StatefulWidget {
  const typesbutton({Key? key}) : super(key: key);

  @override
  State<typesbutton> createState() => _typesbuttonState();
}

// ignore: camel_case_types
class _typesbuttonState extends State<typesbutton> {
  String dropdownvalue = 'Profile';
  var items = [
    'Profile',
    'Settings',
    'Account',
    'Go Premium',
    'Logout',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multi Type Of Button'),
      ),
      body: Center(
        child: Column(
          children: [
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // print('click');
                  },
                  child: const Text('ElevatedButton'),
                ),
                const ElevatedButton(
                  onPressed: null,
                  child: Text('ElevatedButton'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  onPressed: () {},
                  child: const Icon(Icons.person),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  onPressed: () {},
                  child: const Icon(Icons.add_a_photo_outlined),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: () {}, child: const Text('Text Button')),
                const TextButton(onPressed: null, child: Text('Text Button')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    onPressed: () {}, child: const Text('Outline Button')),
                const OutlinedButton(
                    onPressed: null, child: Text('Outline Button')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.wifi),
                  color: Colors.black,
                ),
                const IconButton(
                    onPressed: null, icon: Icon(Icons.bookmark_border_sharp))
              ],
            ),
            DropdownButton(
              focusColor: Colors.black87,
              value: dropdownvalue,
              icon: const Icon(Icons.arrow_downward),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(
                    items,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),

            PopupMenuButton(
                itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 1,
                        child: Text('profile'),
                      ),
                      const PopupMenuItem(
                        value: 2,
                        child: Text('Account'),
                      ),
                      const PopupMenuItem(
                        value: 3,
                        child: Text('Setting'),
                      ),
                      const PopupMenuItem(
                        value: 4,
                        child: Text('About us'),
                      ),
                      const PopupMenuItem(
                        value: 5,
                        child: Text('Go premium'),
                      ),
                    ])

            // Center(
            //   child: Row(
            //     children: [
            //       ButtonBar(alignment: MainAxisAlignment.spaceEvenly,),
            //       TextButton(onPressed: (){
            //         print('click');
            //       }, child: Container(
            //         child: Text(
            //           'Flat Button',
            //         ),
            //       ),),
            //
            //
            //       TextButton(onPressed: null,
            //         child: Container(
            //           child: Text(
            //             'Flat Button',
            //           ),),
            //       ),
            //     ],
            //   ),
            //
            //
            //
            // )
          ],
        ),
      ),
    );
  }
}
