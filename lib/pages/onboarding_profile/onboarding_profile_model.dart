import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'onboarding_profile_widget.dart' show OnboardingProfileWidget;
import 'package:flutter/material.dart';

class OnboardingProfileModel extends FlutterFlowModel<OnboardingProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for enterNameTextField widget.
  FocusNode? enterNameTextFieldFocusNode;
  TextEditingController? enterNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      enterNameTextFieldTextControllerValidator;
  // State field(s) for EnterGoalsTextField widget.
  FocusNode? enterGoalsTextFieldFocusNode;
  TextEditingController? enterGoalsTextFieldTextController;
  String? Function(BuildContext, String?)?
      enterGoalsTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    enterNameTextFieldFocusNode?.dispose();
    enterNameTextFieldTextController?.dispose();

    enterGoalsTextFieldFocusNode?.dispose();
    enterGoalsTextFieldTextController?.dispose();
  }
}
