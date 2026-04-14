import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

int? calcElapsedTime(DateTime? workoutStartTime) {
  // Calculate Elapsed Time : compute:  elapsed = currentTime - workoutStartTime Use:  currentTime workoutStartTime  Difference between DateTimes (in seconds)
  if (workoutStartTime == null)
    return null; // Check if workoutStartTime is null
  DateTime currentTime = DateTime.now(); // Get the current time
  Duration elapsed =
      currentTime.difference(workoutStartTime); // Calculate the difference
  return elapsed.inSeconds; // Return the elapsed time in seconds
}
