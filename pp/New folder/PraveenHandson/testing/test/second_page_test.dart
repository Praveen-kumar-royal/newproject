import 'dart:convert';

import 'package:app_testing_demo/second_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';

import 'package:http/testing.dart';

void main() {
  group('get data test', () {
    test('return number string when http response sucessfull', () async {
      final mockHttp = MockClient((request) async {
        final response = {
          "text":
              "911 is the number of days after September 11th that the Madrid Attack took place.",
          "number": 911,
          "found": true,
          "type": "trivia"
        };
        return Response(jsonEncode(response), 200);
      });
      expect(await getData(mockHttp), isA<String>());
    });

    test('return error message when http response is uncessfully', () async {
      final mockHttp = MockClient((request) async {
        final response = {};
        return Response(jsonEncode(response), 404);
      });
      expect(await getData(mockHttp), 'something went wrong, pls try again');
    });
  });
}
