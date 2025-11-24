import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Counter()));

class Counter extends StatelessWidget {
  final n = ValueNotifier(0);
  void inc() => n.value++;

  Widget build(c) => Scaffold(
    body: Center(
      child: ValueListenableBuilder(
        valueListenable: n,
        builder: (_, v, __) => Text("$v", style: TextStyle(fontSize: 40)),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: inc,
      child: Icon(Icons.add),
    ),
  );
}
