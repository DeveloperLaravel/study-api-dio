import 'package:flutter/material.dart';
import 'package:flutter_study_api_dio/core/colors/app_color.dart';
import 'package:flutter_study_api_dio/models/cover_model.dart';
import 'package:flutter_study_api_dio/models/product_model.dart';
import 'package:flutter_study_api_dio/screens/checkout.dart';
import 'package:flutter_study_api_dio/widget/coustem_app_bar.dart';
import 'package:flutter_study_api_dio/widget/coustem_text.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:ionicons/ionicons.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      appBar: CoustemAppBar(isBlackk: true),
      body: Stack(
        children: [
          // texts
          Positioned(
            top: 10,
            left: 0,
            right: 0,
            child: SvgPicture.asset('assets/text/10.svg'),
          ),
          Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: SvgPicture.asset('assets/text/October.svg'),
          ),
          Positioned(
            top: 85,
            left: 0,
            right: 0,
            child: SvgPicture.asset('assets/text/Collection.svg'),
          ),

          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Gap(120),
                      Image.asset('assets/cover/image.png'),
                      Gap(20),
                      GridView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: ProductModel.products.length,

                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 30,
                          mainAxisSpacing: 0,
                          childAspectRatio: 0.5,
                        ),
                        itemBuilder: (context, index) {
                          final item = ProductModel.products[index];
                          return GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (c) => Checkout(
                                  image: item.image,
                                  name: item.name,
                                  price: item.price,
                                  description: item.description,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(item.image),
                                Gap(20),
                                CoustemText(text: item.name, size: 14),
                                CoustemText(text: item.description, size: 14),
                                CoustemText(
                                  text: '\$ ${item.price.toString()}',
                                  size: 16,
                                  color: Colors.red,
                                ),
                                Gap(20),
                              ],
                            ),
                          );
                        },
                      ),
                      Gap(5),
                      CoustemText(
                        text: 'you may also like '.toUpperCase(),
                        size: 26,
                      ),
                      Gap(7),
                      Image.asset('assets/images/12.png', width: 160),
                      Gap(20),
                      SizedBox(
                        height: 400,
                        child: ListView.builder(
                          // shrinkWrap: true,
                          // physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: CoverModel.covers.length,
                          itemBuilder: (context, index) {
                            final items = CoverModel.covers[index];
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  items.image,
                                  height: 350,
                                  fit: BoxFit.cover,
                                ),
                                Gap(8),
                                CoustemText(text: items.name, size: 24),
                              ],
                            );
                          },
                        ),
                      ),
                      Gap(40),
                      iconsf(),
                      Gap(40),
                      Image.asset('assets/images/8.png', color: Colors.white),
                      Gap(15),
                      CoustemText(
                        text:
                            'support@openui.design \n       +60825876 \n 8:00 - 22:00 - Everyday',
                        height: 3,
                        max: 3,
                      ),
                      Gap(15),
                      Image.asset('assets/images/8.png', color: Colors.white),
                      Gap(70),
                      about(),
                      Gap(70),

                      Gap(30),
                    ],
                  ),
                ),

                Container(
                  width: double.infinity,
                  color: Colors.grey.shade400,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30.0, top: 10),
                    child: Center(
                      child: CoustemText(
                        height: 2.5,
                        max: 3,
                        text: 'Copyright© OpenUI All Rights Reserved.',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget about() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      CoustemText(text: 'about', size: 20),
      CoustemText(text: 'contact', size: 20),
      CoustemText(text: 'blog', size: 20),
    ],
  );
}

Widget iconsf() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Ionicons.logo_facebook, color: Colors.white),
      Gap(40),
      Icon(Ionicons.logo_instagram, color: Colors.white),
      Gap(40),
      Icon(Ionicons.logo_github, color: Colors.white),
    ],
  );
}
