import 'package:flutter/material.dart';

class FoodApp extends StatefulWidget {
  const FoodApp({Key? key}) : super(key: key);

  @override
  State<FoodApp> createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> {
  bool? isCheck1 = false;
  bool? isCheck2 = false;
  bool? isCheck3 = false;
  bool? isCheck4 = false;
  bool? isCheck5 = false;

  var total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          'Food App',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        elevation: 10,
      ),
      body: Column(
        children: [
          SizedBox(height: 25),
          CheckboxListTile(
            value: isCheck1,
            onChanged: (value) {
              setState(() {
                isCheck1 = value;
                if (value == true) {
                  total += 150;
                } else {
                  total -= 150;
                }
              });
            },
            title: Text('Pizza                                          150/-'),
            tileColor: Colors.lightGreen,
            activeColor: Colors.yellow,
            checkColor: Colors.black,
            secondary: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://static.vecteezy.com/system/resources/previews/005/421/120/original/delicious-cheese-pizza-cartoon-icon-illustration-free-vector.jpg')),
          ),
          SizedBox(height: 10),
          CheckboxListTile(
            value: isCheck2,
            onChanged: (value) {
              setState(() {
                isCheck2 = value;
                if (value == true) {
                  total += 100;
                } else {
                  total -= 100;
                }
              });
            },
            title: Text('Manchuriyan                             100/-'),
            tileColor: Colors.lightGreen,
            activeColor: Colors.yellow,
            checkColor: Colors.black,
            secondary: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://holycowvegan.net/wp-content/uploads/2020/03/veg-manchurian-7.jpg'),
            ),
          ),
          SizedBox(height: 10),
          CheckboxListTile(
            value: isCheck3,
            onChanged: (value) {
              setState(() {
                isCheck3 = value;
                if (value == true) {
                  total += 200;
                } else {
                  total -= 200;
                }
              });
            },
            title: Text('Noodles                                     200/-'),
            tileColor: Colors.lightGreen,
            activeColor: Colors.yellow,
            checkColor: Colors.black,
            secondary: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.mygingergarlickitchen.com/wp-content/rich-markup-images/1x1/1x1-veg-schezwan-noodles-recipe-video-how-to-make-easy-veg-schezwan-noodles.jpg'),
            ),
            // enabled: true,
          ),
          SizedBox(height: 10),
          CheckboxListTile(
            value: isCheck4,
            onChanged: (value) {
              setState(() {
                isCheck4 = value;
                if (value == true) {
                  total += 125;
                } else {
                  total -= 125;
                }
              });
            },
            title: Text('Sandwich                                   125/-'),
            tileColor: Colors.lightGreen,
            activeColor: Colors.yellow,
            checkColor: Colors.black,
            secondary: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_OP_8AGIhgC31D7VniLjEXw7gw-XoYQTcSQ&usqp=CAU')),
          ),
          SizedBox(height: 10),
          CheckboxListTile(
            value: isCheck5,
            onChanged: (value) {
              setState(() {
                isCheck5 = value;
                if (value == true) {
                  total += 120;
                } else {
                  total -= 120;
                }
              });
            },
            title: Text('Dosa                                           120/-'),
            tileColor: Colors.lightGreen,
            activeColor: Colors.yellow,
            checkColor: Colors.black,
            secondary: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/9/9f/Dosa_at_Sri_Ganesha_Restauran%2C_Bangkok_%2844570742744%29.jpg')),
          ),
          SizedBox(height: 40),
          Container(
            height: 40,
            width: 100,
            child: ElevatedButton(
              onPressed: showsnk,
              child: Text(
                'Bill',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
              ),
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }

  showsnk() {
    var snk = SnackBar(
      content: Text(
        'Your bill is :- $total.',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {},
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(snk);
  }
}
