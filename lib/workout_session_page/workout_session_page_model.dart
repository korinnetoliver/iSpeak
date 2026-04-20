import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'workout_session_page_widget.dart' show WorkoutSessionPageWidget;
import 'package:flutter/material.dart';

class WorkoutSessionPageModel
    extends FlutterFlowModel<WorkoutSessionPageWidget> {
  ///  Local state fields for this page.

  DateTime? currentTime;

  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
