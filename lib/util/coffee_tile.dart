import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class coffeetile extends StatelessWidget {
  final String coffeeImagepath;
  final String coffeename;
  final String coffeeprice;

  coffeetile(
      {required this.coffeeImagepath,
      required this.coffeename,
      required this.coffeeprice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 25),
      child: Container(
        padding: EdgeInsets.all(20),
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //images coffee
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(coffeeImagepath),
            ),

            //coffeename
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffeename,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Text(
              "with almond milk",
              style: TextStyle(color: Colors.grey.shade700),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$" + coffeeprice),
                  Container(
                    color: Colors.orange,
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
