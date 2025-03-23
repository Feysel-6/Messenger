import 'package:flutter/material.dart';
import 'package:messanger/widgets/catagory_selector.dart';

void main() => runApp(MyApp());

final Color backgroundColor = Color(0xFF283F4D);
final Color containerBackground = Color(0xFF112734);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){},
          iconSize: 30.0,
          color: Colors.white,
        ),
        title: Text(
          'Chats',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          )
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), iconSize: 30.0, onPressed: (){},color: Colors.white),
        ]
      ),
    backgroundColor: backgroundColor,
      body: Column(
        children: <Widget>[
          CatagorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: containerBackground,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                )
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Favorite Contacts',
                          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, letterSpacing: 0.8, color: Colors.orangeAccent),),
                        IconButton(icon: Icon(Icons.more_horiz),
                          iconSize: 30.0,
                          onPressed: (){},
                          color: Colors.orangeAccent),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
