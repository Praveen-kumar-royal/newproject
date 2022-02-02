import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '/post.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Post>> getData() async {
    // url
    var url = 'https://jsonplaceholder.typicode.com/posts';
    final response = await http.get(Uri.parse(url));

    var responseData = json.decode(response.body);

    // create a list
    List<Post> posts = [];
    for (var singlePost in responseData) {
      Post post = Post(
          id: singlePost['id'],
          userId: singlePost['userId'],
          title: singlePost['title'],
          body: singlePost['body']);
      posts.add(post);
    }
    return posts;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (ctx, index) => ListTile(
                title: Text(snapshot.data[index].title),
                subtitle: Text(snapshot.data[index].body),
                contentPadding: EdgeInsets.only(bottom: 20.0),
              ),
            );
          }
        },
      ),
    );
  }
}
