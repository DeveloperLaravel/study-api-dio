import 'package:flutter/material.dart';
import 'package:flutter_study_api_dio/core/widget/widget_first/coustem_text.dart';
import 'package:gap/gap.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
    required this.description,
    // required this.total,
  }) : super(key: key);
  final String image;
  final String name;
  final num price;
  final String description;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  int number = 1;
  int selectnu = 1;

  @override
  Widget build(BuildContext context) {
    final siz = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(widget.image),
        Gap(10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: siz.width * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CoustemText(
                  text: widget.name.toUpperCase(),
                  color: Colors.black,
                ),

                Gap(8),
                CoustemText(
                  text: widget.description,
                  color: Colors.black,
                  flow: TextOverflow.ellipsis,
                ),
                Gap(20),
                Row(
                  children: [
                    qty(
                      () => setState(() {
                        if (number > 1) {
                          number--;
                          selectnu = number;
                        }
                      }),
                      'assets/images/dec.png',
                    ),
                    Gap(20),
                    CoustemText(
                      text: number.toString(),
                      color: Colors.black,
                      weight: FontWeight.bold,
                      size: 26,
                    ),
                    Gap(20),
                    qty(
                      () => setState(() {
                        number++;
                        selectnu = number;
                      }),
                      'assets/images/Plus.png',
                    ),
                  ],
                ),

                Gap(30),
                CoustemText(
                  text: '\$ ${widget.price * selectnu}',
                  color: Colors.red.shade200,
                  size: 23,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget qty(onTap, svg) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.shade400, width: 2),
      ),
      child: Image.asset(svg),
    ),
  );
}
