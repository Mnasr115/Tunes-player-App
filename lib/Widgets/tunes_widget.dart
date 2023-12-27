import 'package:flutter/material.dart';
import 'package:tunes_player_app/Model/tunes_model.dart';

class TunesWidget extends StatelessWidget {
  const TunesWidget({super.key, required this.tunesModel});
  final TunesModel tunesModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tunesModel.playSound();
        },
        child: Container(
          color: tunesModel.color,
        ),
      ),
    );
  }
}
