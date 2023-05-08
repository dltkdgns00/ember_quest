import 'package:ember_quest/ember_quest.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'overlays/game_over.dart';
import 'overlays/main_menu.dart';

class PlayGame extends StatefulWidget {
  const PlayGame({super.key});

  @override
  State<PlayGame> createState() => _PlayGameState();
}

class _PlayGameState extends State<PlayGame>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return GameWidget<EmberQuestGame>.controlled(
      gameFactory: EmberQuestGame.new,
      overlayBuilderMap: {
        'MainMenu': (_, game) => MainMenu(game: game),
        'GameOver': (_, game) => GameOver(game: game),
      },
      initialActiveOverlays: const ['MainMenu'],
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
