import 'package:flutter/material.dart';

import 'secondpage.dart';

class homepage extends StatefulWidget{
  @override
  _homepageState createState()=> _homepageState();

}
class _homepageState extends  State<homepage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => secondpage()))
            });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: FlutterLogo(
        size: MediaQuery.of(context).size.height,
      ),
    );
  }
}

class Timer {
  Timer(Duration duration, Set<Future> Function() param1);
}

