import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NpsCollectionsRecord extends FirestoreRecord {
  NpsCollectionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "score" field.
  double? _score;
  double get score => _score ?? 0.0;
  bool hasScore() => _score != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _score = castToType<double>(snapshotData['score']);
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _userId = snapshotData['user_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('nps_collections');

  static Stream<NpsCollectionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NpsCollectionsRecord.fromSnapshot(s));

  static Future<NpsCollectionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NpsCollectionsRecord.fromSnapshot(s));

  static NpsCollectionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NpsCollectionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NpsCollectionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NpsCollectionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NpsCollectionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NpsCollectionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNpsCollectionsRecordData({
  double? score,
  DateTime? timestamp,
  String? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'score': score,
      'timestamp': timestamp,
      'user_id': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class NpsCollectionsRecordDocumentEquality
    implements Equality<NpsCollectionsRecord> {
  const NpsCollectionsRecordDocumentEquality();

  @override
  bool equals(NpsCollectionsRecord? e1, NpsCollectionsRecord? e2) {
    return e1?.score == e2?.score &&
        e1?.timestamp == e2?.timestamp &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(NpsCollectionsRecord? e) =>
      const ListEquality().hash([e?.score, e?.timestamp, e?.userId]);

  @override
  bool isValidKey(Object? o) => o is NpsCollectionsRecord;
}
