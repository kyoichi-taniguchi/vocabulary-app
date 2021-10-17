import 'package:flutter/material.dart';
import 'package:test_app/word.dart';

import 'word_list.dart';

class Study extends StatefulWidget {
  const Study({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Study> createState() => _StudyState();
}

class _StudyState extends State<Study> {
  int _counter = 0;

  // 単語帳を生成
  final wordLists = Words().vocabularyBook;

  // 単語の数に応じて数を増やすシステム
  void _incrementCounter() {
    setState(() {
      if (_counter + 1 < wordLists.length) {
        _counter++;
      } else {
        _counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    // アプリのUI部分
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                wordLists[_counter].word
            ),
            Text(
                wordLists[_counter].meaning
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              child: const Text ('次の単語'),
              onPressed: _incrementCounter,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 追加画面に遷移
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Word_list(),
              )
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
