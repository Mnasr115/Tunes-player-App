import 'package:flutter/material.dart';
import 'package:tunes_player_app/Model/tunes_model.dart';
import 'package:tunes_player_app/Widgets/tunes_widget.dart';

class TunesView extends StatelessWidget {
  const TunesView({super.key});
  final List<TunesModel> tuneModel = const [
    TunesModel(color: Color(0xffF44336), sound: 'note1.wav'),
    TunesModel(color: Color(0xffF89800), sound: 'note2.wav'),
    TunesModel(color: Color(0xffFEEB3B), sound: 'note3.wav'),
    TunesModel(color: Color(0xff4CAF50), sound: 'note4.wav'),
    TunesModel(color: Color(0xff2F9688), sound: 'note5.wav'),
    TunesModel(color: Color(0xff2896F3), sound: 'note6.wav'),
    TunesModel(color: Color(0xff9C27B0), sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xff253238),
        title: const Text(
          'Flutter Tune',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: tuneModel
            .map(
              (e) => TunesWidget(tunesModel: e),
            )
            .toList(),
      ),
    );
  }
}
