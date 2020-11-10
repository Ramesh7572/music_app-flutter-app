import 'package:flutter/material.dart';
import 'music_detail_bloc.dart';
export 'music_detail_bloc.dart';

class MusicDetailBlocProvider extends InheritedWidget {
  final MusicDetailBloc bloc;

  MusicDetailBlocProvider({Key key, Widget child})
      : bloc = MusicDetailBloc(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(_) {
    return true;
  }

  static MusicDetailBloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<MusicDetailBlocProvider>())
        .bloc;
  }
}