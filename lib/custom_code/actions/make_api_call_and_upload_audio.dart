// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';
// DO NOT REMOVE ABOVE

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:typed_data';

// 🔥 IMPORTANT: use full firebase import
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

Future<String> makeApiCallAndUploadAudio(
  String text,
  String filename,
  String voiceid,
  String userid,
) async {
  try {
    final url =
        'https://api.elevenlabs.io/v1/text-to-speech/$voiceid?output_format=mp3_22050_32';

    final headers = {
      'Content-Type': 'application/json',
      'xi-api-key': 'YOUR_API_KEY_HERE', // 🔥 replace this
    };

    final body = jsonEncode({
      "text": text,
      "model_id": "eleven_multilingual_v2",
      "voice_settings": {
        "stability": 0.76,
        "similarity_boost": 0.75,
        "style": 0.26,
        "use_speaker_boost": true
      }
    });

    final response =
        await http.post(Uri.parse(url), headers: headers, body: body);

    if (response.statusCode == 200) {
      Uint8List audioBytes = response.bodyBytes;

      return await uploadAudio(audioBytes, filename, userid);
    } else {
      return 'API Error: ${response.statusCode} ${response.body}';
    }
  } catch (e) {
    return 'Error: $e';
  }
}

Future<String> uploadAudio(
  Uint8List audioData,
  String fileName,
  String userId,
) async {
  try {
    final storage = firebase_storage.FirebaseStorage.instance;

    final ref = storage
        .ref()
        .child('users')
        .child(userId)
        .child('uploads')
        .child('$fileName.mp3');

    final metadata = firebase_storage.SettableMetadata(
      contentType: 'audio/mpeg',
    );

    final uploadTask = await ref.putData(audioData, metadata);

    final downloadUrl = await uploadTask.ref.getDownloadURL();

    return downloadUrl;
  } catch (e) {
    return 'Upload Error: $e';
  }
}
