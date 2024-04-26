
import 'package:ecomm/utils/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Component/Categories.dart';
import 'Component/List.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeaf2f2),
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Container(
          margin: EdgeInsets.only(left: 5),
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: Colors.lightGreen,
            shape: BoxShape.circle,
          ),
          child: Icon(
            CupertinoIcons.profile_circled,
            color: Colors.white,
            size: 18,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Fruits',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 5),
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              color: Colors.lightGreen,
              shape: BoxShape.circle,
            ),
            child: Icon(
              CupertinoIcons.cart,
              color: Colors.white,
              size: 18,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 18, right: 18, top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('Images/upper2.jfif'),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 6),
                      child: Text.rich(TextSpan(
                        children: [
                          TextSpan(
                            text: 'Get 40% Discount\n',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                          TextSpan(
                            text: 'on your first order\n',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                          TextSpan(
                            text: 'from app.\n',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 28,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Shop now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              Text(
                'Categories',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                          cate.length,
                          (index) => Categories(
                              img: cate[index]['img'],
                              name: cate[index]['name']))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'Popular',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ...List.generate(fruit.length, (index) => fList(name: fruit[index]['name'],img: fruit[index]['img'],
              price: fruit[index]['price']))
            ],
          ),
        ),
      ),
    );
  }

}
