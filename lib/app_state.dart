import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _workoutStartTime = prefs.containsKey('ff_workoutStartTime')
          ? DateTime.fromMillisecondsSinceEpoch(
              prefs.getInt('ff_workoutStartTime')!)
          : _workoutStartTime;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  DateTime? _workoutStartTime;
  DateTime? get workoutStartTime => _workoutStartTime;
  set workoutStartTime(DateTime? value) {
    _workoutStartTime = value;
    value != null
        ? prefs.setInt('ff_workoutStartTime', value.millisecondsSinceEpoch)
        : prefs.remove('ff_workoutStartTime');
  }

  bool _seensurvey = false;
  bool get seensurvey => _seensurvey;
  set seensurvey(bool value) {
    _seensurvey = value;
  }

  bool _selectedVoice = false;
  bool get selectedVoice => _selectedVoice;
  set selectedVoice(bool value) {
    _selectedVoice = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
