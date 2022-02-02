import "package:flutter/material.dart";


class mybutton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      title: 'MyApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
    body:Center(
      child:Card(
        child:Padding(padding: EdgeInsets.all(30),
        child:Column(children:[
          Image.asset('assets/images/p2.jpeg',
          height:200,
          ),
          Divider(),
          Text('Iphone Image 4',
          style:TextStyle(fontSize: 30),
          ),
          // TextButton(onPressed: (){
          // print('button clicked');
          // },
          // child: Text('Click me'),
          // style : TextButton.styleFrom(primary:Colors.red,
          // backgroundColor:Colors.blue,
          // padding:EdgeInsets.all(30),),
          // )
          // ElevatedButton(onPressed: (){
          //   print('button clicked');
          //   },
          //  child:Text('click me'),
          //  style:ElevatedButton.styleFrom(
          //    primary: Colors.purple,
          //    padding:EdgeInsets.all(10),
          //    textStyle: TextStyle(fontSize:30),
          //            ),  
          //                     )
      FloatingActionButton(onPressed: (){
            print('button clicked');
            },
           child:Icon(Icons.add),
           backgroundColor: Colors.red,
      )
           
      ],
        ),
        ),
      ),
    ),
      ),
    );
    
  }

}