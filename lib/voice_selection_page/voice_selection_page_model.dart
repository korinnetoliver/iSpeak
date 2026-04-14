import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'voice_selection_page_widget.dart' show VoiceSelectionPageWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class VoiceSelectionPageModel
    extends FlutterFlowModel<VoiceSelectionPageWidget> {
  ///  Local state fields for this page.

  String sound = 'https://filesamples.com/samples/audio/mp3/sample3.mp3';

  ///  State fields for stateful widgets in this page.

  AudioPlayer? soundPlayer1;
  AudioPlayer? soundPlayer2;
  AudioPlayer? soundPlayer3;
  AudioPlayer? soundPlayer4;
  AudioPlayer? soundPlayer5;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
