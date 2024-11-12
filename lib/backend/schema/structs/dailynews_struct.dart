// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DailynewsStruct extends FFFirebaseStruct {
  DailynewsStruct({
    int? id,
    String? title,
    String? content,
    String? image,
    String? type,
    String? shortDescription,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _title = title,
        _content = content,
        _image = image,
        _type = type,
        _shortDescription = shortDescription,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;

  bool hasContent() => _content != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "short_description" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  set shortDescription(String? val) => _shortDescription = val;

  bool hasShortDescription() => _shortDescription != null;

  static DailynewsStruct fromMap(Map<String, dynamic> data) => DailynewsStruct(
        id: castToType<int>(data['id']),
        title: data['title'] as String?,
        content: data['content'] as String?,
        image: data['image'] as String?,
        type: data['type'] as String?,
        shortDescription: data['short_description'] as String?,
      );

  static DailynewsStruct? maybeFromMap(dynamic data) => data is Map
      ? DailynewsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'title': _title,
        'content': _content,
        'image': _image,
        'type': _type,
        'short_description': _shortDescription,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'short_description': serializeParam(
          _shortDescription,
          ParamType.String,
        ),
      }.withoutNulls;

  static DailynewsStruct fromSerializableMap(Map<String, dynamic> data) =>
      DailynewsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        shortDescription: deserializeParam(
          data['short_description'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DailynewsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DailynewsStruct &&
        id == other.id &&
        title == other.title &&
        content == other.content &&
        image == other.image &&
        type == other.type &&
        shortDescription == other.shortDescription;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, title, content, image, type, shortDescription]);
}

DailynewsStruct createDailynewsStruct({
  int? id,
  String? title,
  String? content,
  String? image,
  String? type,
  String? shortDescription,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DailynewsStruct(
      id: id,
      title: title,
      content: content,
      image: image,
      type: type,
      shortDescription: shortDescription,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DailynewsStruct? updateDailynewsStruct(
  DailynewsStruct? dailynews, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dailynews
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDailynewsStructData(
  Map<String, dynamic> firestoreData,
  DailynewsStruct? dailynews,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dailynews == null) {
    return;
  }
  if (dailynews.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dailynews.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dailynewsData = getDailynewsFirestoreData(dailynews, forFieldValue);
  final nestedData = dailynewsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dailynews.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDailynewsFirestoreData(
  DailynewsStruct? dailynews, [
  bool forFieldValue = false,
]) {
  if (dailynews == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dailynews.toMap());

  // Add any Firestore field values
  dailynews.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDailynewsListFirestoreData(
  List<DailynewsStruct>? dailynewss,
) =>
    dailynewss?.map((e) => getDailynewsFirestoreData(e, true)).toList() ?? [];
