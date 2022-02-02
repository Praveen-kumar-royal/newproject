import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   String name = "";
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: [
//           TextField(
//             // onSubmitted: (value) {
//             //   //name = value;
//             //   setState(() {
//             //     name = value;
//             //   });
//             // },
//             onChanged: (value) {
//               setState(() {
//                 name = value;
//               });
//             },
//           ),
//           Text(
//             name,
//             textDirection: TextDirection.ltr,
//             style: TextStyle(fontSize: 30),
//           )
//         ],
//       ),
//     );
//   }
// }

class MyHomePage  extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
   
}
class _MyHomePageState extends State<MyHomePage>{
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        children:[
          TextField(
            onSubmitted: (value){
              var a ;
              var b ;
              setState(){
                a=(value);
                b=(value);
              };
            }),

        ElevatedButton(onPressed: (){
            print('button clicked');
             },
            child:Text('add'),
          style:ElevatedButton.styleFrom(
             primary: Colors.purple,
           padding:EdgeInsets.all(10),
             textStyle: TextStyle(fontSize:30),
                      ),  
                            )
        ],
      ),
    );
    Function number(a,b){
      return a + b;
    }
  }
}