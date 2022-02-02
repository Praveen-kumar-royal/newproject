import 'package:flutter/material.dart';
//import 'package:flutter_application_1/screens/login_form.dart';
//import 'package:flutter_application_1/screens/register_form.dart';
//import './screens/addtwonumbers.dart';
//import './screens/Myhomepage.dart';
import './screens/login_form.dart';


// void main() {
//   runApp(
//     MaterialApp(
//       title: 'MyApp',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('My App'),
//         ),
//         body: ListView(
//           children: [
//             // ListTile(
//             //   leading: Image.asset('assets/images/p1.jfif'),
//             //   title: Text('Mobile-1'),
//             //   subtitle: Text('Seconary Text'),
//             //   trailing: Icon(Icons.delete),
//             // ),
//             // ListTile(
//             //   leading: Image.asset('assets/images/p2.jfif'),
//             //   title: Text('Mobile-2'),
//             //   subtitle: Text('Seconary Text'),
//             //   trailing: Icon(Icons.delete),
//             // ),
//             ListTile(
//               leading: Image.asset('assets/images/p2.jpeg'),
//               title: Text('Mobile-3'),
//               subtitle: Text('Seconary Text'),
//               trailing: Icon(Icons.delete),
//             ),
//             // ListTile(
//             //   leading: Image.asset('assets/images/p3.jfif'),
//             //   title: Text('Mobile-4'),
//             //   subtitle: Text('Seconary Text'),
//             //   trailing: Icon(Icons.delete),
//             // ),
//           ],
//         ),
//       ),
//     ),
//   );
// }
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'My App',
      home:Scaffold(
      appBar:AppBar(
        title:Text('My App'),
      ),
      body:LoginPage(),
      ),
      );
  }
}