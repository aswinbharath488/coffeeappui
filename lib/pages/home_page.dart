// ignore: unused_import
import 'package:coffeeappui/util/coffee_tile.dart';
import 'package:coffeeappui/util/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  //list of coffeetype
  final List cofeetype = [
    //[coffeetype,isselected]
    [
      'cappucino',
      true,
    ],
    [
      'latte',
      false,
    ],
    [
      'black',
      false,
    ],
    [
      'tea',
      false,
    ]
  ];

  //user type on cofeetypee
  void coffeetypeselected(int index) {
    setState(() {
      //this for loop makes every selectiion false
      for (int i = 0; i < cofeetype.length; i++) {
        cofeetype[i][1] = false;
      }
      cofeetype[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[900],
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "favourite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "notification"),
        ],
      ),
      body: Column(
        children: [
          //best coffee for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "find the best coffee for you",
              style: GoogleFonts.bebasNeue(fontSize: 50),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          //searchbar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "search your cofeee..",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          // horizontal listview of cofeeitem
          Container(
            height: 30,
            // ignore: sort_child_properties_last
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cofeetype.length,
              itemBuilder: (context, index) {
                return coffeetype(
                  cofeeType: cofeetype[index][0],
                  isselected: cofeetype[index][1],
                  ontap: () {
                    coffeetypeselected(index);
                  },
                );
              },
            ),
          ),

          //horizontal listview of cofeeitem

          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                coffeetile(
                  coffeeImagepath: "lib/coffee/cappacino.jpg",
                  coffeename: "cappacino",
                  coffeeprice: "4.10",
                ),
                coffeetile(
                  coffeeImagepath: "lib/coffee/black.jpg",
                  coffeename: "black",
                  coffeeprice: "4.20",
                ),
                coffeetile(
                  coffeeImagepath: "lib/coffee/latte.jpg",
                  coffeename: "latte",
                  coffeeprice: "4.30",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
