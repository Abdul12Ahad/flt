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
