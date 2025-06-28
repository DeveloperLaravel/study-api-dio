import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study_api_dio/core/models/model_seconder/cart.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  List<Cart> users = [];

  Future<void> getData() async {
    const String apiUrl = "https://jsonplaceholder.typicode.com/users";
    try {
      Response response = await Dio().get(apiUrl);
      List<dynamic> jsonData = response.data;

      setState(() {
        users = jsonData.map((user) => Cart.fromJson(user)).toList();
      });
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getData();
        },
        child: Text('content'),
      ),
      appBar: AppBar(backgroundColor: Colors.blue, title: Text('Contact Api')),
      body: GridView.builder(
        itemCount: users.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          final ss = users[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(20),
              child: Column(
                children: [Text(ss.name.toString()), Text(ss.body.toString())],
              ),
            ),
          );
        },
      ),
    );
  }
}
