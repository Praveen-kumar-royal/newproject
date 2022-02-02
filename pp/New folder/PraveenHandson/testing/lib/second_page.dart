import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.orange,
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            return Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  snapshot.data.toString(),
                ),
              ),
            );
          } else {
            return Center(
              child: Text('Error Occurs'),
            );
          }
        });
  }
}

Future<String> getData(http.Client http) async {
  Uri api = Uri.parse('http://numbersapi.com/random/trivia?json');
  final response = await http.get(api);
  if (response.statusCode == 200) {
    final Map responseJson = jsonDecode(response.body);
    return responseJson['text'];
  } else {
    return 'something went wrong, pls try again';
  }
}
