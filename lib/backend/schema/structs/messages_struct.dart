// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessagesStruct extends FFFirebaseStruct {
  MessagesStruct({
    int? id,
    int? userId,
    int? alertId,
    bool? isDone,
    String? type,
    String? body,
    String? title,
    String? image,
    String? description,
    String? deeplink,
    bool? isDailyplan,
    String? formattedWhen,
    String? imageUrl,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _userId = userId,
        _alertId = alertId,
        _isDone = isDone,
        _type = type,
        _body = body,
        _title = title,
        _image = image,
        _description = description,
        _deeplink = deeplink,
        _isDailyplan = isDailyplan,
        _formattedWhen = formattedWhen,
        _imageUrl = imageUrl,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "alert_id" field.
  int? _alertId;
  int get alertId => _alertId ?? 0;
  set alertId(int? val) => _alertId = val;

  void incrementAlertId(int amount) => alertId = alertId + amount;

  bool hasAlertId() => _alertId != null;

  // "is_done" field.
  bool? _isDone;
  bool get isDone => _isDone ?? false;
  set isDone(bool? val) => _isDone = val;

  bool hasIsDone() => _isDone != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "body" field.
  String? _body;
  String get body => _body ?? '';
  set body(String? val) => _body = val;

  bool hasBody() => _body != null;

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

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "deeplink" field.
  String? _deeplink;
  String get deeplink => _deeplink ?? '';
  set deeplink(String? val) => _deeplink = val;

  bool hasDeeplink() => _deeplink != null;

  // "isDailyplan" field.
  bool? _isDailyplan;
  bool get isDailyplan => _isDailyplan ?? false;
  set isDailyplan(bool? val) => _isDailyplan = val;

  bool hasIsDailyplan() => _isDailyplan != null;

  // "formatted_when" field.
  String? _formattedWhen;
  String get formattedWhen => _formattedWhen ?? '';
  set formattedWhen(String? val) => _formattedWhen = val;

  bool hasFormattedWhen() => _formattedWhen != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  set imageUrl(String? val) => _imageUrl = val;

  bool hasImageUrl() => _imageUrl != null;

  static MessagesStruct fromMap(Map<String, dynamic> data) => MessagesStruct(
        id: castToType<int>(data['id']),
        userId: castToType<int>(data['user_id']),
        alertId: castToType<int>(data['alert_id']),
        isDone: data['is_done'] as bool?,
        type: data['type'] as String?,
        body: data['body'] as String?,
        title: data['title'] as String?,
        image: data['image'] as String?,
        description: data['description'] as String?,
        deeplink: data['deeplink'] as String?,
        isDailyplan: data['isDailyplan'] as bool?,
        formattedWhen: data['formatted_when'] as String?,
        imageUrl: data['image_url'] as String?,
      );

  static MessagesStruct? maybeFromMap(dynamic data) =>
      data is Map ? MessagesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'user_id': _userId,
        'alert_id': _alertId,
        'is_done': _isDone,
        'type': _type,
        'body': _body,
        'title': _title,
        'image': _image,
        'description': _description,
        'deeplink': _deeplink,
        'isDailyplan': _isDailyplan,
        'formatted_when': _formattedWhen,
        'image_url': _imageUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
        'alert_id': serializeParam(
          _alertId,
          ParamType.int,
        ),
        'is_done': serializeParam(
          _isDone,
          ParamType.bool,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'body': serializeParam(
          _body,
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
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'deeplink': serializeParam(
          _deeplink,
          ParamType.String,
        ),
        'isDailyplan': serializeParam(
          _isDailyplan,
          ParamType.bool,
        ),
        'formatted_when': serializeParam(
          _formattedWhen,
          ParamType.String,
        ),
        'image_url': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static MessagesStruct fromSerializableMap(Map<String, dynamic> data) =>
      MessagesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
        alertId: deserializeParam(
          data['alert_id'],
          ParamType.int,
          false,
        ),
        isDone: deserializeParam(
          data['is_done'],
          ParamType.bool,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        body: deserializeParam(
          data['body'],
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
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        deeplink: deserializeParam(
          data['deeplink'],
          ParamType.String,
          false,
        ),
        isDailyplan: deserializeParam(
          data['isDailyplan'],
          ParamType.bool,
          false,
        ),
        formattedWhen: deserializeParam(
          data['formatted_when'],
          ParamType.String,
          false,
        ),
        imageUrl: deserializeParam(
          data['image_url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MessagesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MessagesStruct &&
        id == other.id &&
        userId == other.userId &&
        alertId == other.alertId &&
        isDone == other.isDone &&
        type == other.type &&
        body == other.body &&
        title == other.title &&
        image == other.image &&
        description == other.description &&
        deeplink == other.deeplink &&
        isDailyplan == other.isDailyplan &&
        formattedWhen == other.formattedWhen &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        userId,
        alertId,
        isDone,
        type,
        body,
        title,
        image,
        description,
        deeplink,
        isDailyplan,
        formattedWhen,
        imageUrl
      ]);
}

MessagesStruct createMessagesStruct({
  int? id,
  int? userId,
  int? alertId,
  bool? isDone,
  String? type,
  String? body,
  String? title,
  String? image,
  String? description,
  String? deeplink,
  bool? isDailyplan,
  String? formattedWhen,
  String? imageUrl,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MessagesStruct(
      id: id,
      userId: userId,
      alertId: alertId,
      isDone: isDone,
      type: type,
      body: body,
      title: title,
      image: image,
      description: description,
      deeplink: deeplink,
      isDailyplan: isDailyplan,
      formattedWhen: formattedWhen,
      imageUrl: imageUrl,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MessagesStruct? updateMessagesStruct(
  MessagesStruct? messages, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    messages
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMessagesStructData(
  Map<String, dynamic> firestoreData,
  MessagesStruct? messages,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (messages == null) {
    return;
  }
  if (messages.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && messages.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final messagesData = getMessagesFirestoreData(messages, forFieldValue);
  final nestedData = messagesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = messages.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMessagesFirestoreData(
  MessagesStruct? messages, [
  bool forFieldValue = false,
]) {
  if (messages == null) {
    return {};
  }
  final firestoreData = mapToFirestore(messages.toMap());

  // Add any Firestore field values
  messages.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMessagesListFirestoreData(
  List<MessagesStruct>? messagess,
) =>
    messagess?.map((e) => getMessagesFirestoreData(e, true)).toList() ?? [];
