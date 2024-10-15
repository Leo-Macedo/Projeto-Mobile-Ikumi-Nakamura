import 'package:flutter/material.dart';

class JogoPage extends StatefulWidget {
  @override
  State<JogoPage> createState() {
    return JogoPageState();
  }
} 

class JogoPageState extends State<JogoPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        
      ),
      body: Container(
      height: 200,
      width: 100,
      color: Colors.yellow,
    ),
    ); 
}
}