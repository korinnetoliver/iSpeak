import '/components/goal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'user_profile_widget.dart' show UserProfileWidget;
import 'package:flutter/material.dart';

class UserProfileModel extends FlutterFlowModel<UserProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for goal component.
  late GoalModel goalModel;

  @override
  void initState(BuildContext context) {
    goalModel = createModel(context, () => GoalModel());
  }

  @override
  void dispose() {
    goalModel.dispose();
  }
}
