// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SaisieMoodStruct extends FFFirebaseStruct {
  SaisieMoodStruct({
    String? user,
    DateTime? date,
    int? mood,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _user = user,
        _date = date,
        _mood = mood,
        super(firestoreUtilData);

  // "user" field.
  String? _user;
  String get user => _user ?? '';
  set user(String? val) => _user = val;

  bool hasUser() => _user != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;

  bool hasDate() => _date != null;

  // "mood" field.
  int? _mood;
  int get mood => _mood ?? 0;
  set mood(int? val) => _mood = val;

  void incrementMood(int amount) => mood = mood + amount;

  bool hasMood() => _mood != null;

  static SaisieMoodStruct fromMap(Map<String, dynamic> data) =>
      SaisieMoodStruct(
        user: data['user'] as String?,
        date: data['date'] as DateTime?,
        mood: castToType<int>(data['mood']),
      );

  static SaisieMoodStruct? maybeFromMap(dynamic data) => data is Map
      ? SaisieMoodStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'user': _user,
        'date': _date,
        'mood': _mood,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user': serializeParam(
          _user,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'mood': serializeParam(
          _mood,
          ParamType.int,
        ),
      }.withoutNulls;

  static SaisieMoodStruct fromSerializableMap(Map<String, dynamic> data) =>
      SaisieMoodStruct(
        user: deserializeParam(
          data['user'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
        mood: deserializeParam(
          data['mood'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'SaisieMoodStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SaisieMoodStruct &&
        user == other.user &&
        date == other.date &&
        mood == other.mood;
  }

  @override
  int get hashCode => const ListEquality().hash([user, date, mood]);
}

SaisieMoodStruct createSaisieMoodStruct({
  String? user,
  DateTime? date,
  int? mood,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SaisieMoodStruct(
      user: user,
      date: date,
      mood: mood,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SaisieMoodStruct? updateSaisieMoodStruct(
  SaisieMoodStruct? saisieMood, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    saisieMood
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSaisieMoodStructData(
  Map<String, dynamic> firestoreData,
  SaisieMoodStruct? saisieMood,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (saisieMood == null) {
    return;
  }
  if (saisieMood.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && saisieMood.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final saisieMoodData = getSaisieMoodFirestoreData(saisieMood, forFieldValue);
  final nestedData = saisieMoodData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = saisieMood.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSaisieMoodFirestoreData(
  SaisieMoodStruct? saisieMood, [
  bool forFieldValue = false,
]) {
  if (saisieMood == null) {
    return {};
  }
  final firestoreData = mapToFirestore(saisieMood.toMap());

  // Add any Firestore field values
  saisieMood.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSaisieMoodListFirestoreData(
  List<SaisieMoodStruct>? saisieMoods,
) =>
    saisieMoods?.map((e) => getSaisieMoodFirestoreData(e, true)).toList() ?? [];
