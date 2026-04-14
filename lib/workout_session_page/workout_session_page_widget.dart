import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'workout_session_page_model.dart';
export 'workout_session_page_model.dart';

/// Design a full-screen mobile audio playback page sized exactly 393 x 852 px
/// inside a realistic black iPhone mockup on a dark charcoal background.
///
/// Use a deep purple-to-black vertical gradient background, brighter violet
/// on the left fading into near-black on the right. At the top left place a
/// large white back arrow (“<”) with generous padding. Top right add a
/// rounded horizontal control pill in semi-transparent purple containing two
/// circular buttons: first a pause icon with two vertical black bars, second
/// a stop icon with a solid black square, both centered in muted lavender
/// circles. In the middle upper section place a large centered circular
/// portrait image with a soft glowing lavender ring around it. The portrait
/// should sit slightly above center. Below it, centered, place a large
/// rounded dark slate-gray timer pill with bold white text reading “1:35:00”
/// in a clean rounded font.
class WorkoutSessionPageWidget extends StatefulWidget {
  const WorkoutSessionPageWidget({super.key});

  static String routeName = 'WorkoutSessionPage';
  static String routePath = '/workoutSessionPage';

  @override
  State<WorkoutSessionPageWidget> createState() =>
      _WorkoutSessionPageWidgetState();
}

class _WorkoutSessionPageWidgetState extends State<WorkoutSessionPageWidget> {
  late WorkoutSessionPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WorkoutSessionPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'WorkoutSessionPage'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('WORKOUT_SESSION_WorkoutSessionPage_ON_IN');
      logFirebaseEvent('WorkoutSessionPage_start_periodic_action');
      _model.instantTimer = InstantTimer.periodic(
        duration: Duration(milliseconds: 1000),
        callback: (timer) async {
          logFirebaseEvent('WorkoutSessionPage_update_page_state');
          _model.currentTime = getCurrentTimestamp;
          safeSetState(() {});
        },
        startImmediately: true,
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF1A1A2E),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF020002),
                Color(0xFF18011E),
                Color(0xFF2D0E38),
                Color(0xFF2D0E38),
                Color(0xFF2D0E38)
              ],
              stops: [0.0, 0.25, 0.5, 0.75, 1.0],
              begin: AlignmentDirectional(1.0, 0.0),
              end: AlignmentDirectional(-1.0, 0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40.0, 16.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'WORKOUT_SESSION_Container_z7s2nqq4_ON_TA');
                        logFirebaseEvent('Container_navigate_back');
                        context.pop();
                      },
                      child: Container(
                        width: 48.0,
                        height: 48.0,
                        decoration: BoxDecoration(
                          color: Color(0x33FFFFFF),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.black,
                            size: 24.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                      child: Container(
                        width: 150.0,
                        height: 48.0,
                        decoration: BoxDecoration(
                          color: Color(0x55A040C0),
                          borderRadius: BorderRadius.circular(28.0),
                          border: Border.all(
                            color: Color(0x44CC88FF),
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 4.0, 4.0, 4.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Color(0x66B070D0),
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 4.0,
                                        height: 16.0,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(2.0),
                                        ),
                                      ),
                                      Container(
                                        width: 4.0,
                                        height: 16.0,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(2.0),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 4.0)),
                                  ),
                                ),
                              ),
                              Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Color(0x66B070D0),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.play_arrow,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 35.0,
                                ),
                              ),
                            ].divide(SizedBox(width: 25.0)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 215.0,
                        height: 220.0,
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Container(
                                width: 210.0,
                                height: 210.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFB97BFB),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 40.0,
                                      color: Color(0x88CC88FF),
                                      offset: Offset(
                                        0.0,
                                        0.0,
                                      ),
                                    )
                                  ],
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Container(
                                width: 200.0,
                                height: 200.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF2A1A4A),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xBBCC88FF),
                                    width: 3.0,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(97.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1710750266502-cd3a2dc8a92f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NzQ4MjU2NDh8&ixlib=rb-4.1.0&q=80&w=1080',
                                    width: 194.0,
                                    height: 194.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          40.0, 110.0, 40.0, 0.0),
                      child: Container(
                        height: 64.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF242C39),
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              functions
                                  .calcElapsedTime(
                                      FFAppState().workoutStartTime)
                                  .toString(),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .headlineLarge
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineLarge
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 36.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 32.0,
                decoration: BoxDecoration(),
              ),
            ].addToStart(SizedBox(height: 0.0)),
          ),
        ),
      ),
    );
  }
}
