import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TempRecord extends FirestoreRecord {
  TempRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "temp" field.
  double? _temp;
  double get temp => _temp ?? 0.0;
  bool hasTemp() => _temp != null;

  void _initializeFields() {
    _temp = castToType<double>(snapshotData['temp']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('temp');

  static Stream<TempRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TempRecord.fromSnapshot(s));

  static Future<TempRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TempRecord.fromSnapshot(s));

  static TempRecord fromSnapshot(DocumentSnapshot snapshot) => TempRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TempRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TempRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TempRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TempRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTempRecordData({
  double? temp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'temp': temp,
    }.withoutNulls,
  );

  return firestoreData;
}

class TempRecordDocumentEquality implements Equality<TempRecord> {
  const TempRecordDocumentEquality();

  @override
  bool equals(TempRecord? e1, TempRecord? e2) {
    return e1?.temp == e2?.temp;
  }

  @override
  int hash(TempRecord? e) => const ListEquality().hash([e?.temp]);

  @override
  bool isValidKey(Object? o) => o is TempRecord;
}
