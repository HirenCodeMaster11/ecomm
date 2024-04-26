import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Categories({required String img,required String name}) {
  return Container(
    margin: EdgeInsets.only(right: 18),
      height: 100,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
        bottomLeft: Radius.circular(12),
        bottomRight: Radius.circular(12)),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 12),
            height: 58,
            width: 58,
            decoration: BoxDecoration(
              color: Color(0xffeaf2f2),
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(img),
              ),
            ),
          ),
          Text(
            name,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          )
        ],
      ));
}