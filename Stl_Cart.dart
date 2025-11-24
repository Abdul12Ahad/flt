import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home : CardsApp()
));

class CardsApp extends StatelessWidget{
  Widget build(BuildContext c) => Scaffold(
      body: ListView.builder(
    itemCount : 10,
    itemBuilder : (c,i) => Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
      leading : CircleAvatar(child: Text("${i+1}")),
        title: Text('Title $i'),
        subtitle: Text("subtitle $i"),
      ),
    )
  )
  );
}
