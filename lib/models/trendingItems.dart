class TrendingItems {
  List<_Result> _results = [];

  TrendingItems.fromJson(Map<String, dynamic> parsedJson) {
    print(parsedJson['message']['body']['track_list'].length);
    List<_Result> temp = [];
    for (int i = 0;
        i < parsedJson['message']['body']['track_list'].length;
        i++) {
      _Result result =
          _Result(parsedJson['message']['body']['track_list'][i]['track']);
      temp.add(result);
    }
    _results = temp;
  }

  List<_Result> get results => _results;
}

class _Result {
  String track_name;
  int track_id;
  String album_name;
  String artist_name;
  String explicit;
  String track_rating;

  _Result(result) {
    this.track_name = result['track_name'];
    this.album_name = result['album_name'];
    this.artist_name = result['artist_name'];
    this.track_id = result['track_id'];
    this.explicit = result['explicit'] == 1 ? 'True' : 'False';
    this.track_rating = result['track_rating'].toString();
  }
}
