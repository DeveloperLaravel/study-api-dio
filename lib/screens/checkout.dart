// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_study_api_dio/widget/card_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import 'package:flutter_study_api_dio/widget/coustem_app_bar.dart';
import 'package:flutter_study_api_dio/widget/coustem_text.dart';

class Checkout extends StatelessWidget {
  const Checkout({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
    required this.description,
    // required this.qty,
    // required this.total,
  }) : super(key: key);
  final String image;
  final String name;
  final num price;
  final String description;
  // final String qty;
  // final String total;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CoustemAppBar(isBlackk: false),
      body: Column(
        children: [
          Gap(40),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CoustemText(
              text: 'checkout'.toUpperCase(),
              size: 26,
              spacin: 3,
              color: Colors.black,
            ),
          ),
          Image.asset('assets/images/8.png', color: Colors.black),
          Gap(40),
          Padding(
            padding: const EdgeInsets.all(10),
            child: CardWidget(
              image: image,
              name: name,
              price: price,
              description: description,
            ),
          ),
          Gap(30),
          Divider(),
          Gap(10),
          Row(
            children: [
              Gap(40),
              SvgPicture.asset('assets/svgs/Voucher.svg'),
              Gap(10),
              CoustemText(text: 'Add promo code ', color: Colors.black),
            ],
          ),
          Gap(20),
          Divider(),
          Gap(20),

          Row(
            children: [
              Gap(40),
              SvgPicture.asset('assets/svgs/Door.svg'),
              Gap(20),
              CoustemText(text: 'Delivery ', color: Colors.black),
              Gap(180),
              CoustemText(text: 'Free ', color: Colors.black),
            ],
          ),
          Gap(20),

          Divider(),
          Gap(120),

          Row(
            children: [
              Gap(45),
              CoustemText(text: 'Cost', color: Colors.black),
              Spacer(),
              CoustemText(text: '\$ ${price}', color: Colors.red),
              Gap(10),
            ],
          ),

          Spacer(),
          Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_bag_outlined, color: Colors.white),
                  Gap(20),
                  CoustemText(text: 'CHeckout'.toUpperCase()),
                  Gap(40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
