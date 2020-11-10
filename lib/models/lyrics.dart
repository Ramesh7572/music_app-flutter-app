class Lyrics {
  List<_Result> _results = [];

  Lyrics.fromJson(Map<String, dynamic> parsedJson) {
    // print(parsedJson['message']['body']['lyrics']['lyrics_body'].length);
    List<_Result> temp = [];

    _Result result = _Result(parsedJson['message']['body']['lyrics']);
    temp.add(result);

    _results = temp;
  }

  List<_Result> get results => _results;
}

class _Result {
  String lyrics_body;

  _Result(result) {
    this.lyrics_body = result['lyrics_body'];
    print(lyrics_body);
  }
}
