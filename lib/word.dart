class Word {
  String word = '';
  String meaning = '';

  Word({required String word, required String meaning}) {
    // ignore: prefer_initializing_formals
    this.word = word;
    // ignore: prefer_initializing_formals
    this.meaning = meaning;
  }

}

class Words {

  Words();

  List<Word> vocabularyBook = [
    Word(word: 'CSMA/CD', meaning: 'イーサネットに使われている回線の方式、衝突を検出したらランダムな時間をおいて再送信する'),
    Word(word: 'OSI参照モデル', meaning: '通信機能を７層に分割して定義したもの'),
    Word(word: 'NAPT', meaning: 'ルータなどがポート番号とIPアドレスを自動変換する技術、グローバル・プライベートIP間の変換に用いる')
  ];
}