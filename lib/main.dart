import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() async {
  await Future.delayed(Duration(milliseconds: 1000));
  runApp(MaterialApp(home: HomePage()));
}

final client = Dio(
  BaseOptions(followRedirects: true),
);

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final posts = <Post>[];

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) async {
      final json =
          await client.get('https://jsonplaceholder.typicode.com/posts');
      final delta = await compute(toPosts, json.data);
      setState(() {
        posts.addAll(delta);
      });
    });
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) async {
      final json =
          await client.get('https://jsonplaceholder.typicode.com/posts');
      final delta = await compute(toPosts, json.data);
      setState(() {
        posts.addAll(delta);
      });
    });
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) async {
      final json =
          await client.get('https://jsonplaceholder.typicode.com/posts');
      final delta = await compute(toPosts, json.data);
      setState(() {
        posts.addAll(delta);
      });
    });
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) async {
      final json =
          await client.get('https://jsonplaceholder.typicode.com/posts');
      final delta = await compute(toPosts, json.data);
      setState(() {
        posts.addAll(delta);
      });
    });
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) async {
      final json =
          await client.get('https://jsonplaceholder.typicode.com/posts');
      final delta = await compute(toPosts, json.data);
      setState(() {
        posts.addAll(delta);
      });
    });
  }

  void unusedBreak() {
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          ...posts.map((post) => Text(post.title)),
        ],
      ),
    ));
  }
}

class Post {
  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  int userId;
  int id;
  String title;
  String body;
}

List<Post> toPosts(dynamic json) {
  return List.from(json.map(toPost));
}

Post toPost(dynamic json) {
  return Post(
    body: json['body'],
    userId: json['userId'],
    id: json['id'],
    title: json['title'],
  );
}
