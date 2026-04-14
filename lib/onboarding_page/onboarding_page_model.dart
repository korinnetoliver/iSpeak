import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'onboarding_page_widget.dart' show OnboardingPageWidget;
import 'package:flutter/material.dart';

class OnboardingPageModel extends FlutterFlowModel<OnboardingPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for displayNameField widget.
  FocusNode? displayNameFieldFocusNode;
  TextEditingController? displayNameFieldTextController;
  String? Function(BuildContext, String?)?
      displayNameFieldTextControllerValidator;
  // State field(s) for personalGoalField widget.
  FocusNode? personalGoalFieldFocusNode;
  TextEditingController? personalGoalFieldTextController;
  String? Function(BuildContext, String?)?
      personalGoalFieldTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for rewardField widget.
  FocusNode? rewardFieldFocusNode;
  TextEditingController? rewardFieldTextController;
  String? Function(BuildContext, String?)? rewardFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    displayNameFieldFocusNode?.dispose();
    displayNameFieldTextController?.dispose();

    personalGoalFieldFocusNode?.dispose();
    personalGoalFieldTextController?.dispose();

    rewardFieldFocusNode?.dispose();
    rewardFieldTextController?.dispose();
  }
}
