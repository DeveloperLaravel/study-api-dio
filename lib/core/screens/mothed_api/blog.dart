import 'package:flutter/material.dart';
import 'package:flutter_study_api_dio/core/models/model_first/model_drink.dart';
import 'package:flutter_study_api_dio/core/widget/widget_secondery/drink.dart';

class Blog extends StatefulWidget {
  const Blog({super.key});

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  // List<ModelDrink> drinks = [];
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 100),
            Expanded(
              child: ListView.builder(
                controller: controller,
                itemCount: ModelDrink.drinks.length,
                itemBuilder: (context, index) {
                  final data = ModelDrink.drinks[index];
                  return AnimatedBuilder(
                    animation: controller,
                    builder: (context, child) {
                      double offset = 0;
                      if (controller.hasClients) {
                        offset = controller.offset / 90 - index;
                      }
                      offset = offset.clamp(0, 2);
                      return Transform.scale(
                        scale: 1 - (offset * 0.1),
                        child: Drink(
                          image: data.image,
                          title: data.title,
                          descrip: data.descrip,

                          // price: drinks[index].price,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ], //colume basic
        ),
      ),
    );
  }
}
