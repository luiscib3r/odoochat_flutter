// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  int get id => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_id', fromJson: MessageAuthor.fromList)
  MessageAuthor get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_from')
  String get emailFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_type')
  String get messageType => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtype_id')
  List<dynamic> get subtypeId => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  @JsonKey(name: 'res_id')
  int get resId => throw _privateConstructorUsedError;
  @JsonKey(name: 'record_name')
  String get recordName => throw _privateConstructorUsedError;
  @JsonKey(name: 'partner_ids')
  List<int> get partnerIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'starred_partner_ids')
  List<int> get starredPartnerIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'moderation_status', fromJson: Message.parseModerationStatus)
  String? get moderationStatus => throw _privateConstructorUsedError;
  List<int> get notifications => throw _privateConstructorUsedError;
  @JsonKey(name: 'attachment_ids')
  List<Attachment> get atachments => throw _privateConstructorUsedError;
  @JsonKey(name: 'tracking_value_ids')
  List<int> get trackingValueIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'needaction_partner_ids')
  List<int> get needactionPartnerIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'history_partner_ids')
  List<int> get historyPartnerIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_note')
  bool get isNote => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_discussion')
  bool get isDiscussion => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtype_description')
  bool get subtypeDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_notification')
  bool get isNotification => throw _privateConstructorUsedError;
  @JsonKey(name: 'module_icon')
  String get moduleIcon => throw _privateConstructorUsedError;
  @JsonKey(name: 'sms_ids')
  List<int> get smsIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {int id,
      String body,
      String date,
      @JsonKey(name: 'author_id', fromJson: MessageAuthor.fromList)
      MessageAuthor author,
      @JsonKey(name: 'email_from') String emailFrom,
      @JsonKey(name: 'message_type') String messageType,
      @JsonKey(name: 'subtype_id') List<dynamic> subtypeId,
      String model,
      @JsonKey(name: 'res_id') int resId,
      @JsonKey(name: 'record_name') String recordName,
      @JsonKey(name: 'partner_ids') List<int> partnerIds,
      @JsonKey(name: 'starred_partner_ids') List<int> starredPartnerIds,
      @JsonKey(
          name: 'moderation_status', fromJson: Message.parseModerationStatus)
      String? moderationStatus,
      List<int> notifications,
      @JsonKey(name: 'attachment_ids') List<Attachment> atachments,
      @JsonKey(name: 'tracking_value_ids') List<int> trackingValueIds,
      @JsonKey(name: 'needaction_partner_ids') List<int> needactionPartnerIds,
      @JsonKey(name: 'history_partner_ids') List<int> historyPartnerIds,
      @JsonKey(name: 'is_note') bool isNote,
      @JsonKey(name: 'is_discussion') bool isDiscussion,
      @JsonKey(name: 'subtype_description') bool subtypeDescription,
      @JsonKey(name: 'is_notification') bool isNotification,
      @JsonKey(name: 'module_icon') String moduleIcon,
      @JsonKey(name: 'sms_ids') List<int> smsIds});

  $MessageAuthorCopyWith<$Res> get author;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? date = null,
    Object? author = null,
    Object? emailFrom = null,
    Object? messageType = null,
    Object? subtypeId = null,
    Object? model = null,
    Object? resId = null,
    Object? recordName = null,
    Object? partnerIds = null,
    Object? starredPartnerIds = null,
    Object? moderationStatus = freezed,
    Object? notifications = null,
    Object? atachments = null,
    Object? trackingValueIds = null,
    Object? needactionPartnerIds = null,
    Object? historyPartnerIds = null,
    Object? isNote = null,
    Object? isDiscussion = null,
    Object? subtypeDescription = null,
    Object? isNotification = null,
    Object? moduleIcon = null,
    Object? smsIds = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as MessageAuthor,
      emailFrom: null == emailFrom
          ? _value.emailFrom
          : emailFrom // ignore: cast_nullable_to_non_nullable
              as String,
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
      subtypeId: null == subtypeId
          ? _value.subtypeId
          : subtypeId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      resId: null == resId
          ? _value.resId
          : resId // ignore: cast_nullable_to_non_nullable
              as int,
      recordName: null == recordName
          ? _value.recordName
          : recordName // ignore: cast_nullable_to_non_nullable
              as String,
      partnerIds: null == partnerIds
          ? _value.partnerIds
          : partnerIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      starredPartnerIds: null == starredPartnerIds
          ? _value.starredPartnerIds
          : starredPartnerIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      moderationStatus: freezed == moderationStatus
          ? _value.moderationStatus
          : moderationStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<int>,
      atachments: null == atachments
          ? _value.atachments
          : atachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>,
      trackingValueIds: null == trackingValueIds
          ? _value.trackingValueIds
          : trackingValueIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      needactionPartnerIds: null == needactionPartnerIds
          ? _value.needactionPartnerIds
          : needactionPartnerIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      historyPartnerIds: null == historyPartnerIds
          ? _value.historyPartnerIds
          : historyPartnerIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isNote: null == isNote
          ? _value.isNote
          : isNote // ignore: cast_nullable_to_non_nullable
              as bool,
      isDiscussion: null == isDiscussion
          ? _value.isDiscussion
          : isDiscussion // ignore: cast_nullable_to_non_nullable
              as bool,
      subtypeDescription: null == subtypeDescription
          ? _value.subtypeDescription
          : subtypeDescription // ignore: cast_nullable_to_non_nullable
              as bool,
      isNotification: null == isNotification
          ? _value.isNotification
          : isNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      moduleIcon: null == moduleIcon
          ? _value.moduleIcon
          : moduleIcon // ignore: cast_nullable_to_non_nullable
              as String,
      smsIds: null == smsIds
          ? _value.smsIds
          : smsIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageAuthorCopyWith<$Res> get author {
    return $MessageAuthorCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageImplCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
          _$MessageImpl value, $Res Function(_$MessageImpl) then) =
      __$$MessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String body,
      String date,
      @JsonKey(name: 'author_id', fromJson: MessageAuthor.fromList)
      MessageAuthor author,
      @JsonKey(name: 'email_from') String emailFrom,
      @JsonKey(name: 'message_type') String messageType,
      @JsonKey(name: 'subtype_id') List<dynamic> subtypeId,
      String model,
      @JsonKey(name: 'res_id') int resId,
      @JsonKey(name: 'record_name') String recordName,
      @JsonKey(name: 'partner_ids') List<int> partnerIds,
      @JsonKey(name: 'starred_partner_ids') List<int> starredPartnerIds,
      @JsonKey(
          name: 'moderation_status', fromJson: Message.parseModerationStatus)
      String? moderationStatus,
      List<int> notifications,
      @JsonKey(name: 'attachment_ids') List<Attachment> atachments,
      @JsonKey(name: 'tracking_value_ids') List<int> trackingValueIds,
      @JsonKey(name: 'needaction_partner_ids') List<int> needactionPartnerIds,
      @JsonKey(name: 'history_partner_ids') List<int> historyPartnerIds,
      @JsonKey(name: 'is_note') bool isNote,
      @JsonKey(name: 'is_discussion') bool isDiscussion,
      @JsonKey(name: 'subtype_description') bool subtypeDescription,
      @JsonKey(name: 'is_notification') bool isNotification,
      @JsonKey(name: 'module_icon') String moduleIcon,
      @JsonKey(name: 'sms_ids') List<int> smsIds});

  @override
  $MessageAuthorCopyWith<$Res> get author;
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
      _$MessageImpl _value, $Res Function(_$MessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? date = null,
    Object? author = null,
    Object? emailFrom = null,
    Object? messageType = null,
    Object? subtypeId = null,
    Object? model = null,
    Object? resId = null,
    Object? recordName = null,
    Object? partnerIds = null,
    Object? starredPartnerIds = null,
    Object? moderationStatus = freezed,
    Object? notifications = null,
    Object? atachments = null,
    Object? trackingValueIds = null,
    Object? needactionPartnerIds = null,
    Object? historyPartnerIds = null,
    Object? isNote = null,
    Object? isDiscussion = null,
    Object? subtypeDescription = null,
    Object? isNotification = null,
    Object? moduleIcon = null,
    Object? smsIds = null,
  }) {
    return _then(_$MessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as MessageAuthor,
      emailFrom: null == emailFrom
          ? _value.emailFrom
          : emailFrom // ignore: cast_nullable_to_non_nullable
              as String,
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
      subtypeId: null == subtypeId
          ? _value._subtypeId
          : subtypeId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      resId: null == resId
          ? _value.resId
          : resId // ignore: cast_nullable_to_non_nullable
              as int,
      recordName: null == recordName
          ? _value.recordName
          : recordName // ignore: cast_nullable_to_non_nullable
              as String,
      partnerIds: null == partnerIds
          ? _value._partnerIds
          : partnerIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      starredPartnerIds: null == starredPartnerIds
          ? _value._starredPartnerIds
          : starredPartnerIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      moderationStatus: freezed == moderationStatus
          ? _value.moderationStatus
          : moderationStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<int>,
      atachments: null == atachments
          ? _value._atachments
          : atachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>,
      trackingValueIds: null == trackingValueIds
          ? _value._trackingValueIds
          : trackingValueIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      needactionPartnerIds: null == needactionPartnerIds
          ? _value._needactionPartnerIds
          : needactionPartnerIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      historyPartnerIds: null == historyPartnerIds
          ? _value._historyPartnerIds
          : historyPartnerIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isNote: null == isNote
          ? _value.isNote
          : isNote // ignore: cast_nullable_to_non_nullable
              as bool,
      isDiscussion: null == isDiscussion
          ? _value.isDiscussion
          : isDiscussion // ignore: cast_nullable_to_non_nullable
              as bool,
      subtypeDescription: null == subtypeDescription
          ? _value.subtypeDescription
          : subtypeDescription // ignore: cast_nullable_to_non_nullable
              as bool,
      isNotification: null == isNotification
          ? _value.isNotification
          : isNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      moduleIcon: null == moduleIcon
          ? _value.moduleIcon
          : moduleIcon // ignore: cast_nullable_to_non_nullable
              as String,
      smsIds: null == smsIds
          ? _value._smsIds
          : smsIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageImpl implements _Message {
  const _$MessageImpl(
      {required this.id,
      required this.body,
      required this.date,
      @JsonKey(name: 'author_id', fromJson: MessageAuthor.fromList)
      required this.author,
      @JsonKey(name: 'email_from') required this.emailFrom,
      @JsonKey(name: 'message_type') required this.messageType,
      @JsonKey(name: 'subtype_id') required final List<dynamic> subtypeId,
      required this.model,
      @JsonKey(name: 'res_id') required this.resId,
      @JsonKey(name: 'record_name') required this.recordName,
      @JsonKey(name: 'partner_ids') required final List<int> partnerIds,
      @JsonKey(name: 'starred_partner_ids')
      required final List<int> starredPartnerIds,
      @JsonKey(
          name: 'moderation_status', fromJson: Message.parseModerationStatus)
      required this.moderationStatus,
      required final List<int> notifications,
      @JsonKey(name: 'attachment_ids')
      required final List<Attachment> atachments,
      @JsonKey(name: 'tracking_value_ids')
      required final List<int> trackingValueIds,
      @JsonKey(name: 'needaction_partner_ids')
      required final List<int> needactionPartnerIds,
      @JsonKey(name: 'history_partner_ids')
      required final List<int> historyPartnerIds,
      @JsonKey(name: 'is_note') required this.isNote,
      @JsonKey(name: 'is_discussion') required this.isDiscussion,
      @JsonKey(name: 'subtype_description') required this.subtypeDescription,
      @JsonKey(name: 'is_notification') required this.isNotification,
      @JsonKey(name: 'module_icon') required this.moduleIcon,
      @JsonKey(name: 'sms_ids') required final List<int> smsIds})
      : _subtypeId = subtypeId,
        _partnerIds = partnerIds,
        _starredPartnerIds = starredPartnerIds,
        _notifications = notifications,
        _atachments = atachments,
        _trackingValueIds = trackingValueIds,
        _needactionPartnerIds = needactionPartnerIds,
        _historyPartnerIds = historyPartnerIds,
        _smsIds = smsIds;

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  @override
  final int id;
  @override
  final String body;
  @override
  final String date;
  @override
  @JsonKey(name: 'author_id', fromJson: MessageAuthor.fromList)
  final MessageAuthor author;
  @override
  @JsonKey(name: 'email_from')
  final String emailFrom;
  @override
  @JsonKey(name: 'message_type')
  final String messageType;
  final List<dynamic> _subtypeId;
  @override
  @JsonKey(name: 'subtype_id')
  List<dynamic> get subtypeId {
    if (_subtypeId is EqualUnmodifiableListView) return _subtypeId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subtypeId);
  }

  @override
  final String model;
  @override
  @JsonKey(name: 'res_id')
  final int resId;
  @override
  @JsonKey(name: 'record_name')
  final String recordName;
  final List<int> _partnerIds;
  @override
  @JsonKey(name: 'partner_ids')
  List<int> get partnerIds {
    if (_partnerIds is EqualUnmodifiableListView) return _partnerIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_partnerIds);
  }

  final List<int> _starredPartnerIds;
  @override
  @JsonKey(name: 'starred_partner_ids')
  List<int> get starredPartnerIds {
    if (_starredPartnerIds is EqualUnmodifiableListView)
      return _starredPartnerIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_starredPartnerIds);
  }

  @override
  @JsonKey(name: 'moderation_status', fromJson: Message.parseModerationStatus)
  final String? moderationStatus;
  final List<int> _notifications;
  @override
  List<int> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  final List<Attachment> _atachments;
  @override
  @JsonKey(name: 'attachment_ids')
  List<Attachment> get atachments {
    if (_atachments is EqualUnmodifiableListView) return _atachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_atachments);
  }

  final List<int> _trackingValueIds;
  @override
  @JsonKey(name: 'tracking_value_ids')
  List<int> get trackingValueIds {
    if (_trackingValueIds is EqualUnmodifiableListView)
      return _trackingValueIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trackingValueIds);
  }

  final List<int> _needactionPartnerIds;
  @override
  @JsonKey(name: 'needaction_partner_ids')
  List<int> get needactionPartnerIds {
    if (_needactionPartnerIds is EqualUnmodifiableListView)
      return _needactionPartnerIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_needactionPartnerIds);
  }

  final List<int> _historyPartnerIds;
  @override
  @JsonKey(name: 'history_partner_ids')
  List<int> get historyPartnerIds {
    if (_historyPartnerIds is EqualUnmodifiableListView)
      return _historyPartnerIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_historyPartnerIds);
  }

  @override
  @JsonKey(name: 'is_note')
  final bool isNote;
  @override
  @JsonKey(name: 'is_discussion')
  final bool isDiscussion;
  @override
  @JsonKey(name: 'subtype_description')
  final bool subtypeDescription;
  @override
  @JsonKey(name: 'is_notification')
  final bool isNotification;
  @override
  @JsonKey(name: 'module_icon')
  final String moduleIcon;
  final List<int> _smsIds;
  @override
  @JsonKey(name: 'sms_ids')
  List<int> get smsIds {
    if (_smsIds is EqualUnmodifiableListView) return _smsIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_smsIds);
  }

  @override
  String toString() {
    return 'Message(id: $id, body: $body, date: $date, author: $author, emailFrom: $emailFrom, messageType: $messageType, subtypeId: $subtypeId, model: $model, resId: $resId, recordName: $recordName, partnerIds: $partnerIds, starredPartnerIds: $starredPartnerIds, moderationStatus: $moderationStatus, notifications: $notifications, atachments: $atachments, trackingValueIds: $trackingValueIds, needactionPartnerIds: $needactionPartnerIds, historyPartnerIds: $historyPartnerIds, isNote: $isNote, isDiscussion: $isDiscussion, subtypeDescription: $subtypeDescription, isNotification: $isNotification, moduleIcon: $moduleIcon, smsIds: $smsIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.emailFrom, emailFrom) ||
                other.emailFrom == emailFrom) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            const DeepCollectionEquality()
                .equals(other._subtypeId, _subtypeId) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.resId, resId) || other.resId == resId) &&
            (identical(other.recordName, recordName) ||
                other.recordName == recordName) &&
            const DeepCollectionEquality()
                .equals(other._partnerIds, _partnerIds) &&
            const DeepCollectionEquality()
                .equals(other._starredPartnerIds, _starredPartnerIds) &&
            (identical(other.moderationStatus, moderationStatus) ||
                other.moderationStatus == moderationStatus) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            const DeepCollectionEquality()
                .equals(other._atachments, _atachments) &&
            const DeepCollectionEquality()
                .equals(other._trackingValueIds, _trackingValueIds) &&
            const DeepCollectionEquality()
                .equals(other._needactionPartnerIds, _needactionPartnerIds) &&
            const DeepCollectionEquality()
                .equals(other._historyPartnerIds, _historyPartnerIds) &&
            (identical(other.isNote, isNote) || other.isNote == isNote) &&
            (identical(other.isDiscussion, isDiscussion) ||
                other.isDiscussion == isDiscussion) &&
            (identical(other.subtypeDescription, subtypeDescription) ||
                other.subtypeDescription == subtypeDescription) &&
            (identical(other.isNotification, isNotification) ||
                other.isNotification == isNotification) &&
            (identical(other.moduleIcon, moduleIcon) ||
                other.moduleIcon == moduleIcon) &&
            const DeepCollectionEquality().equals(other._smsIds, _smsIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        body,
        date,
        author,
        emailFrom,
        messageType,
        const DeepCollectionEquality().hash(_subtypeId),
        model,
        resId,
        recordName,
        const DeepCollectionEquality().hash(_partnerIds),
        const DeepCollectionEquality().hash(_starredPartnerIds),
        moderationStatus,
        const DeepCollectionEquality().hash(_notifications),
        const DeepCollectionEquality().hash(_atachments),
        const DeepCollectionEquality().hash(_trackingValueIds),
        const DeepCollectionEquality().hash(_needactionPartnerIds),
        const DeepCollectionEquality().hash(_historyPartnerIds),
        isNote,
        isDiscussion,
        subtypeDescription,
        isNotification,
        moduleIcon,
        const DeepCollectionEquality().hash(_smsIds)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImplToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {required final int id,
      required final String body,
      required final String date,
      @JsonKey(name: 'author_id', fromJson: MessageAuthor.fromList)
      required final MessageAuthor author,
      @JsonKey(name: 'email_from') required final String emailFrom,
      @JsonKey(name: 'message_type') required final String messageType,
      @JsonKey(name: 'subtype_id') required final List<dynamic> subtypeId,
      required final String model,
      @JsonKey(name: 'res_id') required final int resId,
      @JsonKey(name: 'record_name') required final String recordName,
      @JsonKey(name: 'partner_ids') required final List<int> partnerIds,
      @JsonKey(name: 'starred_partner_ids')
      required final List<int> starredPartnerIds,
      @JsonKey(
          name: 'moderation_status', fromJson: Message.parseModerationStatus)
      required final String? moderationStatus,
      required final List<int> notifications,
      @JsonKey(name: 'attachment_ids')
      required final List<Attachment> atachments,
      @JsonKey(name: 'tracking_value_ids')
      required final List<int> trackingValueIds,
      @JsonKey(name: 'needaction_partner_ids')
      required final List<int> needactionPartnerIds,
      @JsonKey(name: 'history_partner_ids')
      required final List<int> historyPartnerIds,
      @JsonKey(name: 'is_note') required final bool isNote,
      @JsonKey(name: 'is_discussion') required final bool isDiscussion,
      @JsonKey(name: 'subtype_description')
      required final bool subtypeDescription,
      @JsonKey(name: 'is_notification') required final bool isNotification,
      @JsonKey(name: 'module_icon') required final String moduleIcon,
      @JsonKey(name: 'sms_ids')
      required final List<int> smsIds}) = _$MessageImpl;

  factory _Message.fromJson(Map<String, dynamic> json) = _$MessageImpl.fromJson;

  @override
  int get id;
  @override
  String get body;
  @override
  String get date;
  @override
  @JsonKey(name: 'author_id', fromJson: MessageAuthor.fromList)
  MessageAuthor get author;
  @override
  @JsonKey(name: 'email_from')
  String get emailFrom;
  @override
  @JsonKey(name: 'message_type')
  String get messageType;
  @override
  @JsonKey(name: 'subtype_id')
  List<dynamic> get subtypeId;
  @override
  String get model;
  @override
  @JsonKey(name: 'res_id')
  int get resId;
  @override
  @JsonKey(name: 'record_name')
  String get recordName;
  @override
  @JsonKey(name: 'partner_ids')
  List<int> get partnerIds;
  @override
  @JsonKey(name: 'starred_partner_ids')
  List<int> get starredPartnerIds;
  @override
  @JsonKey(name: 'moderation_status', fromJson: Message.parseModerationStatus)
  String? get moderationStatus;
  @override
  List<int> get notifications;
  @override
  @JsonKey(name: 'attachment_ids')
  List<Attachment> get atachments;
  @override
  @JsonKey(name: 'tracking_value_ids')
  List<int> get trackingValueIds;
  @override
  @JsonKey(name: 'needaction_partner_ids')
  List<int> get needactionPartnerIds;
  @override
  @JsonKey(name: 'history_partner_ids')
  List<int> get historyPartnerIds;
  @override
  @JsonKey(name: 'is_note')
  bool get isNote;
  @override
  @JsonKey(name: 'is_discussion')
  bool get isDiscussion;
  @override
  @JsonKey(name: 'subtype_description')
  bool get subtypeDescription;
  @override
  @JsonKey(name: 'is_notification')
  bool get isNotification;
  @override
  @JsonKey(name: 'module_icon')
  String get moduleIcon;
  @override
  @JsonKey(name: 'sms_ids')
  List<int> get smsIds;
  @override
  @JsonKey(ignore: true)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageAuthor _$MessageAuthorFromJson(Map<String, dynamic> json) {
  return _MessageAuthor.fromJson(json);
}

/// @nodoc
mixin _$MessageAuthor {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageAuthorCopyWith<MessageAuthor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageAuthorCopyWith<$Res> {
  factory $MessageAuthorCopyWith(
          MessageAuthor value, $Res Function(MessageAuthor) then) =
      _$MessageAuthorCopyWithImpl<$Res, MessageAuthor>;
  @useResult
  $Res call({int id, String name, String? company});
}

/// @nodoc
class _$MessageAuthorCopyWithImpl<$Res, $Val extends MessageAuthor>
    implements $MessageAuthorCopyWith<$Res> {
  _$MessageAuthorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? company = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageAuthorImplCopyWith<$Res>
    implements $MessageAuthorCopyWith<$Res> {
  factory _$$MessageAuthorImplCopyWith(
          _$MessageAuthorImpl value, $Res Function(_$MessageAuthorImpl) then) =
      __$$MessageAuthorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? company});
}

/// @nodoc
class __$$MessageAuthorImplCopyWithImpl<$Res>
    extends _$MessageAuthorCopyWithImpl<$Res, _$MessageAuthorImpl>
    implements _$$MessageAuthorImplCopyWith<$Res> {
  __$$MessageAuthorImplCopyWithImpl(
      _$MessageAuthorImpl _value, $Res Function(_$MessageAuthorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? company = freezed,
  }) {
    return _then(_$MessageAuthorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageAuthorImpl implements _MessageAuthor {
  const _$MessageAuthorImpl(
      {required this.id, required this.name, this.company});

  factory _$MessageAuthorImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageAuthorImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? company;

  @override
  String toString() {
    return 'MessageAuthor(id: $id, name: $name, company: $company)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageAuthorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.company, company) || other.company == company));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, company);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageAuthorImplCopyWith<_$MessageAuthorImpl> get copyWith =>
      __$$MessageAuthorImplCopyWithImpl<_$MessageAuthorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageAuthorImplToJson(
      this,
    );
  }
}

abstract class _MessageAuthor implements MessageAuthor {
  const factory _MessageAuthor(
      {required final int id,
      required final String name,
      final String? company}) = _$MessageAuthorImpl;

  factory _MessageAuthor.fromJson(Map<String, dynamic> json) =
      _$MessageAuthorImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get company;
  @override
  @JsonKey(ignore: true)
  _$$MessageAuthorImplCopyWith<_$MessageAuthorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
