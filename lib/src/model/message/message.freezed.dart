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
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_id')
  List<dynamic> get authorId => throw _privateConstructorUsedError;
  List<int> get channelIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'attachment_ids')
  List<Attachment> get attachments => throw _privateConstructorUsedError;

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
      DateTime date,
      @JsonKey(name: 'author_id') List<dynamic> authorId,
      List<int> channelIds,
      @JsonKey(name: 'attachment_ids') List<Attachment> attachments});
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
    Object? authorId = null,
    Object? channelIds = null,
    Object? attachments = null,
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
              as DateTime,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      channelIds: null == channelIds
          ? _value.channelIds
          : channelIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>,
    ) as $Val);
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
      DateTime date,
      @JsonKey(name: 'author_id') List<dynamic> authorId,
      List<int> channelIds,
      @JsonKey(name: 'attachment_ids') List<Attachment> attachments});
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
    Object? authorId = null,
    Object? channelIds = null,
    Object? attachments = null,
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
              as DateTime,
      authorId: null == authorId
          ? _value._authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      channelIds: null == channelIds
          ? _value._channelIds
          : channelIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>,
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
      @JsonKey(name: 'author_id') required final List<dynamic> authorId,
      required final List<int> channelIds,
      @JsonKey(name: 'attachment_ids')
      required final List<Attachment> attachments})
      : _authorId = authorId,
        _channelIds = channelIds,
        _attachments = attachments;

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  @override
  final int id;
  @override
  final String body;
  @override
  final DateTime date;
  final List<dynamic> _authorId;
  @override
  @JsonKey(name: 'author_id')
  List<dynamic> get authorId {
    if (_authorId is EqualUnmodifiableListView) return _authorId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authorId);
  }

  final List<int> _channelIds;
  @override
  List<int> get channelIds {
    if (_channelIds is EqualUnmodifiableListView) return _channelIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channelIds);
  }

  final List<Attachment> _attachments;
  @override
  @JsonKey(name: 'attachment_ids')
  List<Attachment> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  String toString() {
    return 'Message(id: $id, body: $body, date: $date, authorId: $authorId, channelIds: $channelIds, attachments: $attachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._authorId, _authorId) &&
            const DeepCollectionEquality()
                .equals(other._channelIds, _channelIds) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      body,
      date,
      const DeepCollectionEquality().hash(_authorId),
      const DeepCollectionEquality().hash(_channelIds),
      const DeepCollectionEquality().hash(_attachments));

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
      required final DateTime date,
      @JsonKey(name: 'author_id') required final List<dynamic> authorId,
      required final List<int> channelIds,
      @JsonKey(name: 'attachment_ids')
      required final List<Attachment> attachments}) = _$MessageImpl;

  factory _Message.fromJson(Map<String, dynamic> json) = _$MessageImpl.fromJson;

  @override
  int get id;
  @override
  String get body;
  @override
  DateTime get date;
  @override
  @JsonKey(name: 'author_id')
  List<dynamic> get authorId;
  @override
  List<int> get channelIds;
  @override
  @JsonKey(name: 'attachment_ids')
  List<Attachment> get attachments;
  @override
  @JsonKey(ignore: true)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
