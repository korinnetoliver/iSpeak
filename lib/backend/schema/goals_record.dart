import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GoalsRecord extends FirestoreRecord {
  GoalsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "goalTitle" field.
  String? _goalTitle;
  String get goalTitle => _goalTitle ?? '';
  bool hasGoalTitle() => _goalTitle != null;

  // "targetDate" field.
  DateTime? _targetDate;
  DateTime? get targetDate => _targetDate;
  bool hasTargetDate() => _targetDate != null;

  // "reward" field.
  String? _reward;
  String get reward => _reward ?? '';
  bool hasReward() => _reward != null;

  // "pointsNeeded" field.
  int? _pointsNeeded;
  int get pointsNeeded => _pointsNeeded ?? 0;
  bool hasPointsNeeded() => _pointsNeeded != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _goalTitle = snapshotData['goalTitle'] as String?;
    _targetDate = snapshotData['targetDate'] as DateTime?;
    _reward = snapshotData['reward'] as String?;
    _pointsNeeded = castToType<int>(snapshotData['pointsNeeded']);
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('goals');

  static Stream<GoalsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GoalsRecord.fromSnapshot(s));

  static Future<GoalsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GoalsRecord.fromSnapshot(s));

  static GoalsRecord fromSnapshot(DocumentSnapshot snapshot) => GoalsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GoalsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GoalsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GoalsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GoalsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGoalsRecordData({
  String? goalTitle,
  DateTime? targetDate,
  String? reward,
  int? pointsNeeded,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'goalTitle': goalTitle,
      'targetDate': targetDate,
      'reward': reward,
      'pointsNeeded': pointsNeeded,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class GoalsRecordDocumentEquality implements Equality<GoalsRecord> {
  const GoalsRecordDocumentEquality();

  @override
  bool equals(GoalsRecord? e1, GoalsRecord? e2) {
    return e1?.goalTitle == e2?.goalTitle &&
        e1?.targetDate == e2?.targetDate &&
        e1?.reward == e2?.reward &&
        e1?.pointsNeeded == e2?.pointsNeeded &&
        e1?.user == e2?.user;
  }

  @override
  int hash(GoalsRecord? e) => const ListEquality()
      .hash([e?.goalTitle, e?.targetDate, e?.reward, e?.pointsNeeded, e?.user]);

  @override
  bool isValidKey(Object? o) => o is GoalsRecord;
}
