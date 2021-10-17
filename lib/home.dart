import 'package:flutter/material.dart';
import 'package:test_app/study.dart';

import 'word_list.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('単語帳アプリ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  // 追加画面に遷移
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Study(title: '用語を覚えよう'),
                      )
                  );
                },
                child: const Text('ランダムに表示開始'),
            ),
            ElevatedButton(
              onPressed: () {
                // 追加画面に遷移
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Word_list(),
                    )
                );
              },
              child: Text('追加する'),
            ),
          ],
        ),
      ),
    );
  }
}
