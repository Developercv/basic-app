import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeSreen extends StatelessWidget {
  List fruitname = ['Apple', 'Banana', 'berry', 'guava'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ListView And GridView"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
        itemCount: fruitname.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(fruitname[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
