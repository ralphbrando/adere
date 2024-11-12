// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MeStruct extends FFFirebaseStruct {
  MeStruct({
    double? scoring,
    bool? hasAlerts,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _scoring = scoring,
        _hasAlerts = hasAlerts,
        super(firestoreUtilData);

  // "scoring" field.
  double? _scoring;
  double get scoring => _scoring ?? 0.0;
  set scoring(double? val) => _scoring = val;

  void incrementScoring(double amount) => scoring = scoring + amount;

  bool hasScoring() => _scoring != null;

  // "has_alerts" field.
  bool? _hasAlerts;
  bool get hasAlerts => _hasAlerts ?? false;
  set hasAlerts(bool? val) => _hasAlerts = val;

  bool hasHasAlerts() => _hasAlerts != null;

  static MeStruct fromMap(Map<String, dynamic> data) => MeStruct(
        scoring: castToType<double>(data['scoring']),
        hasAlerts: data['has_alerts'] as bool?,
      );

  static MeStruct? maybeFromMap(dynamic data) =>
      data is Map ? MeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'scoring': _scoring,
        'has_alerts': _hasAlerts,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'scoring': serializeParam(
          _scoring,
          ParamType.double,
        ),
        'has_alerts': serializeParam(
          _hasAlerts,
          ParamType.bool,
        ),
      }.withoutNulls;

  static MeStruct fromSerializableMap(Map<String, dynamic> data) => MeStruct(
        scoring: deserializeParam(
          data['scoring'],
          ParamType.double,
          false,
        ),
        hasAlerts: deserializeParam(
          data['has_alerts'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'MeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MeStruct &&
        scoring == other.scoring &&
        hasAlerts == other.hasAlerts;
  }

  @override
  int get hashCode => const ListEquality().hash([scoring, hasAlerts]);
}

MeStruct createMeStruct({
  double? scoring,
  bool? hasAlerts,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MeStruct(
      scoring: scoring,
      hasAlerts: hasAlerts,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MeStruct? updateMeStruct(
  MeStruct? me, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    me
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMeStructData(
  Map<String, dynamic> firestoreData,
  MeStruct? me,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (me == null) {
    return;
  }
  if (me.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && me.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final meData = getMeFirestoreData(me, forFieldValue);
  final nestedData = meData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = me.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMeFirestoreData(
  MeStruct? me, [
  bool forFieldValue = false,
]) {
  if (me == null) {
    return {};
  }
  final firestoreData = mapToFirestore(me.toMap());

  // Add any Firestore field values
  me.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMeListFirestoreData(
  List<MeStruct>? mes,
) =>
    mes?.map((e) => getMeFirestoreData(e, true)).toList() ?? [];
