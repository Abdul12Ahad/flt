Hello world:

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Hello()));

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello world App")),
      body: Center(child: Text("Hello flutter")),
    );
  }
}

________________-------------------------___________________----------------_________

Counter App using state:

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Counter()));

class Counter extends StatefulWidget{
  @override
  State<Counter> createState() => _State();
}

class _State extends State<Counter> {
  @override
  int n = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App")),
      body: Center(
        child : Text("$n", style: TextStyle(fontSize:50)),
      ),
      floatingActionButton : FloatingActionButton(onPressed: () => setState(()=> n++),
                                                 child: Icon(Icons.add)
                                                 )
    );
  }
}


_______________--------------------______________________---------------_____________

Login Form:

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Login()));

class Login extends StatelessWidget {
  @override
  final u = TextEditingController(), p = TextEditingController();
  
  
  Widget build(BuildContext c) {
    return Scaffold(
      appBar: AppBar(title: Text("Login App")),
      body: Center(
        child : Column(
          children :[
            TextField(decoration:InputDecoration(labelText:"Username"),controller:u),
            TextField(decoration:InputDecoration(labelText:"Password"),controller:p, obscureText:true),
            ElevatedButton(
              onPressed : () => print("${u.text} - ${p.text}"),
              child: Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}


_________________---------------------________________________-----------------______


diScreen:
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: first()));

class first extends StatelessWidget
{     @override
      Widget build(BuildContext c)=> Scaffold(
      appBar: AppBar(title: Text("First Screen")),
      body : Center(
        child: ElevatedButton(
          onPressed: ()=> Navigator.push(c, MaterialPageRoute(builder: (c)=> Second())),
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
          onPressed: ()=> Navigator.pop(c),
          child: Text("Go to first Screen"),
        ),
      ),
  );
}



____________________-------------------------------_______________________--------___


Calculator:


import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Calc()));

class Calc extends StatefulWidget {
  State<Calc> createState() => _Calc();
}

class _Calc extends State<Calc> {
  var n1 = TextEditingController(), n2 = TextEditingController(), res = 0.0;

  Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: Text("Calculator App")),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(labelText: "Num1"),
            controller: n1,
          ),
          TextField(
            decoration: InputDecoration(labelText: "Num2"),
            controller: n2,
          ),
          ElevatedButton(
            onPressed: () => setState(
              () => res = double.parse(n1.text) + double.parse(n2.text),
            ),
            child: Text("Add"),
          ),
          Text("Result: $res"),
        ],
      ),
    ),
  );
}

___________________-------------------_________________________-----------------_____



import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ImageApp()));

class ImageApp extends StatelessWidget {
  Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: Text("Image App")),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.favorite, color:Colors.red, size:50),
          
          Image.network("", width:50),
        ],
      ),
    ),
  );
}


____________--------------------__________________________----------------___________

void main()
{
  int num = 26;
  double db = 26.507;
  String s = "Hello world";
  bool b = true;
  
  print("My number is : $num");
   print("My double is : $db");
   print("My string is : $s");
   print("My bool is : $b");
  
  int res = num+6;
  print("REsult is $res");
  
  if(b)
      print("bool is true");
  else
     print("No true");
  
  for(int i =0;i<7;i++)
  {
      print("num - $i");
  }
  
  
  List<int> numbers = [1,2,3,4];
  print("First element of list ${numbers[0]}");
  print("length of list ${numbers.length}");

  Map<String, int> ages = {
    'Kiran': 30,
    'Raj':20,
    'Ralph':25,
  };
  
  print("Kirans age: ${ages["Kiran"]}");

}

______________----------------___________________________-----------_________________

Row Layout:

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ImageApp()));

class ImageApp extends StatelessWidget {
  Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: Text("Row Layout")),
    body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(color:Colors.red, width:100, height:100),
          Container(color:Colors.yellow, width:100, height:100),
          Container(color:Colors.green, width:100, height:100),
        ],
    ),
  );
}

Column Layout:

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ImageApp()));

class ImageApp extends StatelessWidget {
  Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: Text("Column Layout")),
    body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(color:Colors.red, width:100, height:100),
          Container(color:Colors.yellow, width:100, height:100),
          Container(color:Colors.green, width:100, height:100),
        ],
    ),
  );
}


Stack Layout:

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ImageApp()));

class ImageApp extends StatelessWidget {
  Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: Text("Stack Layout")),
    body: Stack(
        alignment: Alignment.center,
        children: [
          Container(color: Colors.red, width: 150, height: 150),
              Container(color: Colors.yellow, width: 120, height: 120),
              Container(color: Colors.green, width: 80, height: 80),
        ],
    ),
  );
}


_____________------------------________________________------------------____________


Responsive UI for adapting to diff screen sizes:

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Responsive()));

class Responsive extends StatelessWidget {
  Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: Text("Responsive Layout")),
    body: LayoutBuilder(builder : (c,box) => Center(
      child : box.maxWidth<600
      ? Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children : [
           Text("Narrow layout", style: TextStyle(fontSize:24)),
            SizedBox(height:20),
            ElevatedButton(onPressed:(){}, child:Text("Click me"))
        ])
      : Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children : [
           Text("wide layout", style: TextStyle(fontSize:24)),
            SizedBox(height:20),
            ElevatedButton(onPressed:(){}, child:Text("Click me"))
      ]),
    ),    
    ),
  );
}

___________--------------------____________________----------------__________________


Mobile , Tablet, Desktop layout- Media Queries:

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MedQuer()));

class MedQuer extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    double w = MediaQuery.of(c).size.width;
    String layout = w < 600 ? "Mobile" : w < 1200 ? "Tablet" : "Desktop";

    return Scaffold(
      appBar: AppBar(title: Text("Responsive UI")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 100),
            Text(
              "$layout Layout",
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}


__________________---------------_______________________---------------______________

Navigator to different screens using routes:

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

_____________--------------------_______________________________------------_________

stateful and stateless widgets Cards app:


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

___________________-----------------------______________________-----------__________

same as the counter app

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _increment() {
    setState(() => _counter++);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter (setState)')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter Value:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: Icon(Icons.add),
      ),
    );
  }
}


___________________-------------------_________________________--------------________

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  ChangeNotifierProvider(
    create: (_) => MovieProvider(),
    child: MaterialApp(home: HomeScreen()),
  ),
);

class MovieProvider extends ChangeNotifier {
  List<String> movies = List.generate(5, (i) => "Movie $i");
  List<String> fav = [];

  void toggle(String m) {
    fav.contains(m) ? fav.remove(m) : fav.add(m);
    notifyListeners();
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final p = context.watch<MovieProvider>();

    return Scaffold(
      appBar: AppBar(title: Text("Mini Provider (${p.fav.length})")),
      body: ListView(
        children: p.movies.map((m) {
          final liked = p.fav.contains(m);
          return ListTile(
            title: Text(m),
            trailing: IconButton(
              icon: Icon(Icons.favorite,
                  color: liked ? Colors.red : Colors.grey),
              onPressed: () => p.toggle(m),
            ),
          );
        }).toList(),
      ),
    );
  }
}



  
