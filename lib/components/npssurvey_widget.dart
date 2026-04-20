import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'npssurvey_model.dart';
export 'npssurvey_model.dart';

class NpssurveyWidget extends StatefulWidget {
  const NpssurveyWidget({super.key});

  @override
  State<NpssurveyWidget> createState() => _NpssurveyWidgetState();
}

class _NpssurveyWidgetState extends State<NpssurveyWidget> {
  late NpssurveyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NpssurveyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0x44C084FC),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(90.0, 0.0, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 90.0, 0.0),
              child: Text(
                'How likely are you to recommend iSpeak to a friend?',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      font: GoogleFonts.interTight(
                        fontWeight:
                            FlutterFlowTheme.of(context).titleLarge.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleLarge.fontStyle,
                      ),
                      color: Color(0xFDF6F9FA),
                      fontSize: 70.0,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).titleLarge.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleLarge.fontStyle,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 90.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('NPSSURVEY_COMP_1_BTN_ON_TAP');
                      logFirebaseEvent('Button_update_component_state');
                      _model.npsScore = 1.0;
                      safeSetState(() {});
                      logFirebaseEvent('Button_backend_call');

                      await NpsCollectionsRecord.collection
                          .doc()
                          .set(createNpsCollectionsRecordData(
                            score: _model.npsScore,
                          ));
                      logFirebaseEvent('Button_backend_call');

                      await currentUserReference!.update(createUsersRecordData(
                        hasSeenSurvey: true,
                      ));
                      logFirebaseEvent('Button_close_dialog_drawer_etc');
                      Navigator.pop(context);
                      logFirebaseEvent('Button_navigate_to');

                      context.pushNamed(OnboardingProfileWidget.routeName);
                    },
                    text: '1',
                    options: FFButtonOptions(
                      width: 300.0,
                      height: 90.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFDD41FF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: Colors.white,
                                fontSize: 50.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('NPSSURVEY_COMP_2_BTN_ON_TAP');
                      logFirebaseEvent('Button_update_component_state');
                      _model.npsScore = 2.0;
                      safeSetState(() {});
                      logFirebaseEvent('Button_backend_call');

                      await NpsCollectionsRecord.collection
                          .doc()
                          .set(createNpsCollectionsRecordData(
                            score: _model.npsScore,
                          ));
                      logFirebaseEvent('Button_backend_call');

                      await currentUserReference!.update(createUsersRecordData(
                        hasSeenSurvey: true,
                      ));
                      logFirebaseEvent('Button_close_dialog_drawer_etc');
                      Navigator.pop(context);
                      logFirebaseEvent('Button_navigate_to');

                      context.pushNamed(OnboardingProfileWidget.routeName);
                    },
                    text: '2',
                    options: FFButtonOptions(
                      width: 300.0,
                      height: 90.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFDD41FF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: Colors.white,
                                fontSize: 50.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('NPSSURVEY_COMP_3_BTN_ON_TAP');
                      logFirebaseEvent('Button_update_component_state');
                      _model.npsScore = 3.0;
                      safeSetState(() {});
                      logFirebaseEvent('Button_backend_call');

                      await NpsCollectionsRecord.collection
                          .doc()
                          .set(createNpsCollectionsRecordData(
                            score: _model.npsScore,
                          ));
                      logFirebaseEvent('Button_backend_call');

                      await currentUserReference!.update(createUsersRecordData(
                        hasSeenSurvey: true,
                      ));
                      logFirebaseEvent('Button_close_dialog_drawer_etc');
                      Navigator.pop(context);
                      logFirebaseEvent('Button_navigate_to');

                      context.pushNamed(OnboardingProfileWidget.routeName);
                    },
                    text: '3',
                    options: FFButtonOptions(
                      width: 300.0,
                      height: 90.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFDD41FF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: Colors.white,
                                fontSize: 50.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ].divide(SizedBox(width: 175.0)),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('NPSSURVEY_COMP_4_BTN_ON_TAP');
                      logFirebaseEvent('Button_update_component_state');
                      _model.npsScore = 4.0;
                      safeSetState(() {});
                      logFirebaseEvent('Button_backend_call');

                      await NpsCollectionsRecord.collection
                          .doc()
                          .set(createNpsCollectionsRecordData(
                            score: _model.npsScore,
                          ));
                      logFirebaseEvent('Button_backend_call');

                      await currentUserReference!.update(createUsersRecordData(
                        hasSeenSurvey: true,
                      ));
                      logFirebaseEvent('Button_close_dialog_drawer_etc');
                      Navigator.pop(context);
                      logFirebaseEvent('Button_navigate_to');

                      context.pushNamed(OnboardingProfileWidget.routeName);
                    },
                    text: '4',
                    options: FFButtonOptions(
                      width: 300.0,
                      height: 90.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFDD41FF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: Colors.white,
                                fontSize: 50.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('NPSSURVEY_COMP_5_BTN_ON_TAP');
                      logFirebaseEvent('Button_update_component_state');
                      _model.npsScore = 5.0;
                      safeSetState(() {});
                      logFirebaseEvent('Button_backend_call');

                      await NpsCollectionsRecord.collection
                          .doc()
                          .set(createNpsCollectionsRecordData(
                            score: _model.npsScore,
                          ));
                      logFirebaseEvent('Button_backend_call');

                      await currentUserReference!.update(createUsersRecordData(
                        hasSeenSurvey: true,
                      ));
                      logFirebaseEvent('Button_close_dialog_drawer_etc');
                      Navigator.pop(context);
                      logFirebaseEvent('Button_navigate_to');

                      context.pushNamed(OnboardingProfileWidget.routeName);
                    },
                    text: '5',
                    options: FFButtonOptions(
                      width: 300.0,
                      height: 90.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFDD41FF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: Colors.white,
                                fontSize: 50.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('NPSSURVEY_COMP_6_BTN_ON_TAP');
                      logFirebaseEvent('Button_update_component_state');
                      _model.npsScore = 6.0;
                      safeSetState(() {});
                      logFirebaseEvent('Button_backend_call');

                      await NpsCollectionsRecord.collection
                          .doc()
                          .set(createNpsCollectionsRecordData(
                            score: _model.npsScore,
                          ));
                      logFirebaseEvent('Button_backend_call');

                      await currentUserReference!.update(createUsersRecordData(
                        hasSeenSurvey: true,
                      ));
                      logFirebaseEvent('Button_close_dialog_drawer_etc');
                      Navigator.pop(context);
                      logFirebaseEvent('Button_navigate_to');

                      context.pushNamed(OnboardingProfileWidget.routeName);
                    },
                    text: '6',
                    options: FFButtonOptions(
                      width: 300.0,
                      height: 90.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFDD41FF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: Colors.white,
                                fontSize: 50.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ].divide(SizedBox(width: 175.0)),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('NPSSURVEY_COMP_7_BTN_ON_TAP');
                      logFirebaseEvent('Button_update_component_state');
                      _model.npsScore = 7.0;
                      safeSetState(() {});
                      logFirebaseEvent('Button_backend_call');

                      await NpsCollectionsRecord.collection
                          .doc()
                          .set(createNpsCollectionsRecordData(
                            score: _model.npsScore,
                          ));
                      logFirebaseEvent('Button_backend_call');

                      await currentUserReference!.update(createUsersRecordData(
                        hasSeenSurvey: true,
                      ));
                      logFirebaseEvent('Button_close_dialog_drawer_etc');
                      Navigator.pop(context);
                      logFirebaseEvent('Button_navigate_to');

                      context.pushNamed(OnboardingProfileWidget.routeName);
                    },
                    text: '7',
                    options: FFButtonOptions(
                      width: 300.0,
                      height: 90.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFDD41FF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: Colors.white,
                                fontSize: 50.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('NPSSURVEY_COMP_8_BTN_ON_TAP');
                      logFirebaseEvent('Button_update_component_state');
                      _model.npsScore = 8.0;
                      safeSetState(() {});
                      logFirebaseEvent('Button_backend_call');

                      await NpsCollectionsRecord.collection
                          .doc()
                          .set(createNpsCollectionsRecordData(
                            score: _model.npsScore,
                          ));
                      logFirebaseEvent('Button_backend_call');

                      await currentUserReference!.update(createUsersRecordData(
                        hasSeenSurvey: true,
                      ));
                      logFirebaseEvent('Button_close_dialog_drawer_etc');
                      Navigator.pop(context);
                      logFirebaseEvent('Button_navigate_to');

                      context.pushNamed(OnboardingProfileWidget.routeName);
                    },
                    text: '8',
                    options: FFButtonOptions(
                      width: 300.0,
                      height: 90.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFDD41FF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: Colors.white,
                                fontSize: 50.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('NPSSURVEY_COMP_9_BTN_ON_TAP');
                      logFirebaseEvent('Button_update_component_state');
                      _model.npsScore = 9.0;
                      safeSetState(() {});
                      logFirebaseEvent('Button_backend_call');

                      await NpsCollectionsRecord.collection
                          .doc()
                          .set(createNpsCollectionsRecordData(
                            score: _model.npsScore,
                          ));
                      logFirebaseEvent('Button_backend_call');

                      await currentUserReference!.update(createUsersRecordData(
                        hasSeenSurvey: true,
                      ));
                      logFirebaseEvent('Button_close_dialog_drawer_etc');
                      Navigator.pop(context);
                      logFirebaseEvent('Button_navigate_to');

                      context.pushNamed(OnboardingProfileWidget.routeName);
                    },
                    text: '9',
                    options: FFButtonOptions(
                      width: 300.0,
                      height: 90.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFDD41FF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: Colors.white,
                                fontSize: 50.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ].divide(SizedBox(width: 175.0)),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(474.0, 0.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent('NPSSURVEY_COMP_10_BTN_ON_TAP');
                        logFirebaseEvent('Button_update_component_state');
                        _model.npsScore = 10.0;
                        safeSetState(() {});
                        logFirebaseEvent('Button_backend_call');

                        await NpsCollectionsRecord.collection
                            .doc()
                            .set(createNpsCollectionsRecordData(
                              score: _model.npsScore,
                            ));
                        logFirebaseEvent('Button_backend_call');

                        await currentUserReference!
                            .update(createUsersRecordData(
                          hasSeenSurvey: true,
                        ));
                        logFirebaseEvent('Button_close_dialog_drawer_etc');
                        Navigator.pop(context);
                        logFirebaseEvent('Button_navigate_to');

                        context.pushNamed(OnboardingProfileWidget.routeName);
                      },
                      text: '10',
                      options: FFButtonOptions(
                        width: 300.0,
                        height: 90.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFFDD41FF),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  fontSize: 50.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ].divide(SizedBox(width: 5.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
