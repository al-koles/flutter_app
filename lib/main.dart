import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  nouns.take(50).forEach(print);
  print(syllables('beautiful'));  // 3
  print(syllables('abatement'));  // 3
  print(syllables('zoology'));  // 4
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final pair = WordPair.random();
    return MaterialApp(
      title: 'Material app title',
      home: Scaffold(
        appBar: AppBar(
          title: Text("App bar title"),
        ),
        body: Center(
          child: Text(pair.asCamelCase),
        ),
      )
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
