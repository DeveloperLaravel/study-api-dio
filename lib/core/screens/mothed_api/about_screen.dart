import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  List posts = [];

  void fetcPosts() async {
    try {
      var re = await Dio().get('https://jsonplaceholder.typicode.com/posts');
      setState(() {
        posts = re.data;
      });
    } catch (e) {
      print('No data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dio API Example')),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return ListTile(
            title: Text(posts[index]['title']),
            subtitle: Text(post['body']),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => fetcPosts(),
        child: Text('DATA'),
      ),
    );
  }
}
