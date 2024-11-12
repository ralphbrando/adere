// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgirStruct extends FFFirebaseStruct {
  AgirStruct({
    String? number,
    bool? isRead,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _number = number,
        _isRead = isRead,
        super(firestoreUtilData);

  // "number" field.
  String? _number;
  String get number => _number ?? '';
  set number(String? val) => _number = val;

  bool hasNumber() => _number != null;

  // "isRead" field.
  bool? _isRead;
  bool get isRead => _isRead ?? false;
  set isRead(bool? val) => _isRead = val;

  bool hasIsRead() => _isRead != null;

  static AgirStruct fromMap(Map<String, dynamic> data) => AgirStruct(
        number: data['number'] as String?,
        isRead: data['isRead'] as bool?,
      );

  static AgirStruct? maybeFromMap(dynamic data) =>
      data is Map ? AgirStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'number': _number,
        'isRead': _isRead,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'number': serializeParam(
          _number,
          ParamType.String,
        ),
        'isRead': serializeParam(
          _isRead,
          ParamType.bool,
        ),
      }.withoutNulls;

  static AgirStruct fromSerializableMap(Map<String, dynamic> data) =>
      AgirStruct(
        number: deserializeParam(
          data['number'],
          ParamType.String,
          false,
        ),
        isRead: deserializeParam(
          data['isRead'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'AgirStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AgirStruct &&
        number == other.number &&
        isRead == other.isRead;
  }

  @override
  int get hashCode => const ListEquality().hash([number, isRead]);
}

AgirStruct createAgirStruct({
  String? number,
  bool? isRead,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AgirStruct(
      number: number,
      isRead: isRead,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AgirStruct? updateAgirStruct(
  AgirStruct? agir, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    agir
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAgirStructData(
  Map<String, dynamic> firestoreData,
  AgirStruct? agir,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (agir == null) {
    return;
  }
  if (agir.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && agir.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final agirData = getAgirFirestoreData(agir, forFieldValue);
  final nestedData = agirData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = agir.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAgirFirestoreData(
  AgirStruct? agir, [
  bool forFieldValue = false,
]) {
  if (agir == null) {
    return {};
  }
  final firestoreData = mapToFirestore(agir.toMap());

  // Add any Firestore field values
  agir.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAgirListFirestoreData(
  List<AgirStruct>? agirs,
) =>
    agirs?.map((e) => getAgirFirestoreData(e, true)).toList() ?? [];
