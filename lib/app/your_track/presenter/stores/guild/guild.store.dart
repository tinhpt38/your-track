import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:your_track/app/your_track/presenter/stores/guild/guild.state.dart';

class GuildStore extends Store<GuildState> {
  GuildStore() : super(GuildInitState(0));

  final _controller = PageController(
    initialPage: 0,
  );

  get controller => _controller;

  void dispose() {
    _controller.dispose();
  }

  void pageChange(int index) {
    update(GuildDataState(index));
  }
}
