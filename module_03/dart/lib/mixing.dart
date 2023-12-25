import 'package:flutter/material.dart';

mixin Playable {
  void play() => debugPrint("Playing");
}

mixin Stoppable {
  void stop() => debugPrint("Stopping");
}

class MusicPlayer with Playable, Stoppable {}

void main() {
  MusicPlayer p1 = MusicPlayer();
  p1.play();
  p1.stop();
}
