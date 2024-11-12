// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgirAttributesStruct extends FFFirebaseStruct {
  AgirAttributesStruct({
    String? number,
    String? title,
    String? image,
    String? insideTitle,
    String? insideText,
    bool? action,
    String? expression,
    String? media,
    bool? mediaVisible,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _number = number,
        _title = title,
        _image = image,
        _insideTitle = insideTitle,
        _insideText = insideText,
        _action = action,
        _expression = expression,
        _media = media,
        _mediaVisible = mediaVisible,
        super(firestoreUtilData);

  // "number" field.
  String? _number;
  String get number => _number ?? '';
  set number(String? val) => _number = val;

  bool hasNumber() => _number != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "inside_title" field.
  String? _insideTitle;
  String get insideTitle => _insideTitle ?? '';
  set insideTitle(String? val) => _insideTitle = val;

  bool hasInsideTitle() => _insideTitle != null;

  // "inside_text" field.
  String? _insideText;
  String get insideText => _insideText ?? '';
  set insideText(String? val) => _insideText = val;

  bool hasInsideText() => _insideText != null;

  // "action" field.
  bool? _action;
  bool get action => _action ?? false;
  set action(bool? val) => _action = val;

  bool hasAction() => _action != null;

  // "expression" field.
  String? _expression;
  String get expression => _expression ?? '';
  set expression(String? val) => _expression = val;

  bool hasExpression() => _expression != null;

  // "media" field.
  String? _media;
  String get media => _media ?? '';
  set media(String? val) => _media = val;

  bool hasMedia() => _media != null;

  // "media_visible" field.
  bool? _mediaVisible;
  bool get mediaVisible => _mediaVisible ?? false;
  set mediaVisible(bool? val) => _mediaVisible = val;

  bool hasMediaVisible() => _mediaVisible != null;

  static AgirAttributesStruct fromMap(Map<String, dynamic> data) =>
      AgirAttributesStruct(
        number: data['number'] as String?,
        title: data['title'] as String?,
        image: data['image'] as String?,
        insideTitle: data['inside_title'] as String?,
        insideText: data['inside_text'] as String?,
        action: data['action'] as bool?,
        expression: data['expression'] as String?,
        media: data['media'] as String?,
        mediaVisible: data['media_visible'] as bool?,
      );

  static AgirAttributesStruct? maybeFromMap(dynamic data) => data is Map
      ? AgirAttributesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'number': _number,
        'title': _title,
        'image': _image,
        'inside_title': _insideTitle,
        'inside_text': _insideText,
        'action': _action,
        'expression': _expression,
        'media': _media,
        'media_visible': _mediaVisible,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'number': serializeParam(
          _number,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'inside_title': serializeParam(
          _insideTitle,
          ParamType.String,
        ),
        'inside_text': serializeParam(
          _insideText,
          ParamType.String,
        ),
        'action': serializeParam(
          _action,
          ParamType.bool,
        ),
        'expression': serializeParam(
          _expression,
          ParamType.String,
        ),
        'media': serializeParam(
          _media,
          ParamType.String,
        ),
        'media_visible': serializeParam(
          _mediaVisible,
          ParamType.bool,
        ),
      }.withoutNulls;

  static AgirAttributesStruct fromSerializableMap(Map<String, dynamic> data) =>
      AgirAttributesStruct(
        number: deserializeParam(
          data['number'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        insideTitle: deserializeParam(
          data['inside_title'],
          ParamType.String,
          false,
        ),
        insideText: deserializeParam(
          data['inside_text'],
          ParamType.String,
          false,
        ),
        action: deserializeParam(
          data['action'],
          ParamType.bool,
          false,
        ),
        expression: deserializeParam(
          data['expression'],
          ParamType.String,
          false,
        ),
        media: deserializeParam(
          data['media'],
          ParamType.String,
          false,
        ),
        mediaVisible: deserializeParam(
          data['media_visible'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'AgirAttributesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AgirAttributesStruct &&
        number == other.number &&
        title == other.title &&
        image == other.image &&
        insideTitle == other.insideTitle &&
        insideText == other.insideText &&
        action == other.action &&
        expression == other.expression &&
        media == other.media &&
        mediaVisible == other.mediaVisible;
  }

  @override
  int get hashCode => const ListEquality().hash([
        number,
        title,
        image,
        insideTitle,
        insideText,
        action,
        expression,
        media,
        mediaVisible
      ]);
}

AgirAttributesStruct createAgirAttributesStruct({
  String? number,
  String? title,
  String? image,
  String? insideTitle,
  String? insideText,
  bool? action,
  String? expression,
  String? media,
  bool? mediaVisible,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AgirAttributesStruct(
      number: number,
      title: title,
      image: image,
      insideTitle: insideTitle,
      insideText: insideText,
      action: action,
      expression: expression,
      media: media,
      mediaVisible: mediaVisible,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AgirAttributesStruct? updateAgirAttributesStruct(
  AgirAttributesStruct? agirAttributes, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    agirAttributes
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAgirAttributesStructData(
  Map<String, dynamic> firestoreData,
  AgirAttributesStruct? agirAttributes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (agirAttributes == null) {
    return;
  }
  if (agirAttributes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && agirAttributes.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final agirAttributesData =
      getAgirAttributesFirestoreData(agirAttributes, forFieldValue);
  final nestedData =
      agirAttributesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = agirAttributes.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAgirAttributesFirestoreData(
  AgirAttributesStruct? agirAttributes, [
  bool forFieldValue = false,
]) {
  if (agirAttributes == null) {
    return {};
  }
  final firestoreData = mapToFirestore(agirAttributes.toMap());

  // Add any Firestore field values
  agirAttributes.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAgirAttributesListFirestoreData(
  List<AgirAttributesStruct>? agirAttributess,
) =>
    agirAttributess
        ?.map((e) => getAgirAttributesFirestoreData(e, true))
        .toList() ??
    [];
