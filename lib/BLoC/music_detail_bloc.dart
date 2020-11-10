import 'dart:async';

import 'package:rxdart/rxdart.dart';
import '../models/lyrics.dart';
import '../resources/repository.dart';

class MusicDetailBloc {
  final _repository = Repository();
  final _trackId = PublishSubject<int>();
  final _lyrics = BehaviorSubject<Future<Lyrics>>();

  Function(int) get fetchTrailersById => _trackId.sink.add;
  Stream<Future<Lyrics>> get movieTrailers => _lyrics.stream;

  MusicDetailBloc() {
    _trackId.stream.transform(_itemTransformer()).pipe(_lyrics);
  }

  dispose() async {
    _trackId.close();
    await _lyrics.drain();
    _lyrics.close();
  }

  _itemTransformer() {
    return ScanStreamTransformer(
      (Future<Lyrics> trailer, int id, int index) {
        print(index);
        trailer = _repository.fetchLyrics(id);
        return trailer;
      },
    );
  }
}
