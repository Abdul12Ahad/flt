import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (c) => Home(),
    '/second': (c) => Second(),
    '/third' : (c) => Third(),
  }
));

class Home extends StatelessWidget
{     @override
      Widget build(BuildContext c)=> Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body : Center(
        child: ElevatedButton(
          onPressed: ()=> Navigator.pushNamed(c,'/second'),
          child: Text("Go to second Screen"),
        ),
      ),
  );
}

class Second extends StatelessWidget
{     @override
      Widget build(BuildContext c)=> Scaffold(
      appBar: AppBar(title: Text("Second Screen")),
      body : Center(
        child: ElevatedButton(
          onPressed: ()=> Navigator.pushNamed(c,'/third'),
          child: Text("Go to Third Screen"),
        ),
      ),
  );
}

class Third extends StatelessWidget
{     @override
      Widget build(BuildContext c)=> Scaffold(
      appBar: AppBar(title: Text("Third Screen")),
      body : Center(
        child: ElevatedButton(
          onPressed: ()=> Navigator.popUntil(c,ModalRoute.withName('/')),
          child: Text("Back to Home"),
        ),
      ),
  );
}
