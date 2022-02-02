import 'package:flutter/material.dart';
import '../models/Trip.dart';

class Details extends StatelessWidget {
  final Trip trip;

  Details({required this.trip});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              child: Image.asset(
                'assets/images/${trip.image}',
                height: 360,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              title: Text(
                trip.title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey[800]),
              ),
              subtitle: Text(
                '${trip.night} night stay for only \$${trip.price}',
                style: TextStyle(letterSpacing: 1),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(18),
              child: Text(
                "industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the l",
                style: TextStyle(color: Colors.grey[600], height: 1.4),
              ),
            )
          ],
        ),
      ),
    );
  }
}
