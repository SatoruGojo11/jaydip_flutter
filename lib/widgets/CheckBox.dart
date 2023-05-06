import 'package:flutter/material.dart';

class Checkboxuse extends StatefulWidget {
  const Checkboxuse({Key? key}) : super(key: key);

  @override
  State<Checkboxuse> createState() => _CheckboxuseState();
}

class _CheckboxuseState extends State<Checkboxuse> {
  bool? isCheck1 = false;
  bool? isCheck2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Check Box Use',
          style: TextStyle(
            fontSize: 20,
            color: Colors.amberAccent,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Checkbox(
            value: isCheck1,
            onChanged: (value) {
              setState(() {
                isCheck1 = value;
              });
            },
          ),
          SizedBox(height: 20),
          CheckboxListTile(
            value: isCheck2,
            onChanged: (value) {
              setState(() {
                isCheck2 = value;
              });
            },
            title: Text('Check Box List Tile'),
            tileColor: Colors.cyanAccent,
            activeColor: Colors.pinkAccent,
          ),
        ],
      ),
    );
  }
}

//             children: [
//               Checkbox(
//                 value: isCheck1,
//                 onChanged: (value) {
//                   setState(() {
//                     isCheck1 = value;
//                   });
//                 },
//               ),
//               const Text(
//                 'Pizza  150/- ',
//                 style: TextStyle(fontSize: 30, color: Colors.black),
//               ),
//               const SizedBox(height: 10),
//               CheckboxListTile(
//                 value: isCheck2,
//                 onChanged: (value) {
//                   setState(() {
//                     isCheck2 = value;
//                   });
//                 },
//                 title: const Text('Manchuriyan'),
//                 tileColor: Colors.lightGreen,
//                 activeColor: Colors.yellow,
//                 checkColor: Colors.black,
//                 secondary: const CircleAvatar(
//                   backgroundImage: NetworkImage(
//                       'https://holycowvegan.net/wp-content/uploads/2020/03/veg-manchurian-7.jpg'),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
