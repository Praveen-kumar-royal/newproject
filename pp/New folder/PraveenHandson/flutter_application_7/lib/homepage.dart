import 'package:flutter/material.dart';

class homepage extends StatefulWidget{
  @override
  _homepageState createState() => _homepageState();
}
class _homepageState extends State<homepage>{
  
    double _opacity = 1;
  double _margin = 10;
  double _width = 200;
  Color _color = Colors.deepPurple;
  
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: AnimatedContainer(
        duration: Duration(seconds: 2),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _margin = 50;
                });
              },
              child: Text('Animate Margin'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _color = Colors.purple;
                });
              },
              child: Text('Animate Color'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _width = 400;
                });
              },
              child: Text('Animate width'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _opacity = 0;
                });
              },
              child: Text('Animate Opasity'),
            ),
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 2),
              child: Text(
                'Hide Me',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );  
}
}