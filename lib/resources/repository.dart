import 'dart:async';
import 'package:music_app/models/lyrics.dart';

import 'trending_api_provider.dart';
import '../models/trendingItems.dart';

class Repository {
  final musicApiProvider = TrendingAPIProvider();

  Future<TrendingItems> fetchAllMusic() => musicApiProvider.fetchMusicList();
  Future<Lyrics> fetchLyrics(int track_id) =>
      musicApiProvider.fetchLyrics(track_id);
}
