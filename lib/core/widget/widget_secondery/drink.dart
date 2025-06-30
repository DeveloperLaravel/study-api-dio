// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Drink extends StatelessWidget {
  const Drink({
    Key? key,
    required this.image,
    required this.title,
    required this.descrip,
    // required this.price,
  }) : super(key: key);
  final String image;
  final String title;
  final String descrip;
  // final String price;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(12),
            ),
            color: Colors.white,
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(
                vertical: 70,
                horizontal: 3,
              ),
              child: Row(),
            ),
          ),
        ),

        Positioned(
          top: -10,
          left: 20,
          bottom: 45,

          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: 70,
                height: 30,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade900,
                      blurRadius: 30,
                      spreadRadius: 2,
                    ),
                  ],
                ),
              ),
              Image.asset(image, fit: BoxFit.contain),
            ],
          ),
        ),
        Positioned(
          top: 70,
          bottom: 0,
          right: 90,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(descrip, style: TextStyle(fontSize: 16)),
            ],
          ),
        ),

        Positioned(
          top: 70,
          bottom: 0,
          right: 30,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black54),
            ),
            child: Icon(Icons.arrow_forward, size: 19, color: Colors.black),
          ),
        ),
      ], //colume stack
    );
  }
}
