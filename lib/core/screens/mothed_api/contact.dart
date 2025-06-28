import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study_api_dio/core/models/model_seconder/cart.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  // dio
  Cart? cart;
  List uesr = [];
  Future<void> getData() async {
    const String apiUrl = "https://jsonplaceholder.typicode.com/users";
    try {
      Response response = await Dio().get(apiUrl);
      if (response.data != null) {
        setState(() {
          cart = Cart.fromJson(response.data);
        });
      } else {
        throw Exception('Api is null');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact Api')),
      body: GridView.builder(
        itemCount: 7,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(20),
              child: Column(children: [Text('hfjf'), Text('fgfdfd')]),
            ),
          );
        },
      ),
    );
  }
}
