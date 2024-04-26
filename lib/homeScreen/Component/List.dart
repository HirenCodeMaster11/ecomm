import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Padding fList({required String name , required double price, required String img}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 14,top: 10),
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10,right: 18),
          height: 240,
          width: 223,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5,right: 10),
                  height: 170,
                  width: 214,
                  decoration: BoxDecoration(
                    color: Color(0xffeaf2f2),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(img),
                    ),
                  ),
                ),
                Text(name,style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),),
                Text('⭐⭐⭐⭐⭐',style: TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),),
                Text(
                  '\$${price}/kg',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}