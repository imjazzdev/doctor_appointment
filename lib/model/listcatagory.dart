import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListCatagory extends StatelessWidget {
  const ListCatagory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CatagoryComponen('assets/virus.png', 'Covid-19'),
          CatagoryComponen('assets/pill.png', 'Pill'),
          CatagoryComponen('assets/recipe.png', 'Recipe'),
          CatagoryComponen('assets/article.png', 'Article'),
        ],
      ),
    );
  }
}

class CatagoryComponen extends StatelessWidget {
  final String title;
  final String icon;
  CatagoryComponen(this.icon, this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 90,
      width: 90,
      child: Column(
        children: [
          Image.asset(
            icon,
            width: 52,
            height: 52,
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
