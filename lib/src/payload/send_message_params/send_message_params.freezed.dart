// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_message_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SendMessageParams _$SendMessageParamsFromJson(Map<String, dynamic> json) {
  return _SendMessageParams.fromJson(json);
}

/// @nodoc
mixin _$SendMessageParams {
  Map<String, dynamic> get context => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_data')
  SendMessagePostData get postData => throw _privateConstructorUsedError;
  @JsonKey(name: 'thread_id')
  int get threadId => throw _privateConstructorUsedError;
  @JsonKey(name: 'thread_model')
  String get threadModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendMessageParamsCopyWith<SendMessageParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageParamsCopyWith<$Res> {
  factory $SendMessageParamsCopyWith(
          SendMessageParams value, $Res Function(SendMessageParams) then) =
      _$SendMessageParamsCopyWithImpl<$Res, SendMessageParams>;
  @useResult
  $Res call(
      {Map<String, dynamic> context,
      @JsonKey(name: 'post_data') SendMessagePostData postData,
      @JsonKey(name: 'thread_id') int threadId,
      @JsonKey(name: 'thread_model') String threadModel});

  $SendMessagePostDataCopyWith<$Res> get postData;
}

/// @nodoc
class _$SendMessageParamsCopyWithImpl<$Res, $Val extends SendMessageParams>
    implements $SendMessageParamsCopyWith<$Res> {
  _$SendMessageParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? postData = null,
    Object? threadId = null,
    Object? threadModel = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      postData: null == postData
          ? _value.postData
          : postData // ignore: cast_nullable_to_non_nullable
              as SendMessagePostData,
      threadId: null == threadId
          ? _value.threadId
          : threadId // ignore: cast_nullable_to_non_nullable
              as int,
      threadModel: null == threadModel
          ? _value.threadModel
          : threadModel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SendMessagePostDataCopyWith<$Res> get postData {
    return $SendMessagePostDataCopyWith<$Res>(_value.postData, (value) {
      return _then(_value.copyWith(postData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SendMessageParamsImplCopyWith<$Res>
    implements $SendMessageParamsCopyWith<$Res> {
  factory _$$SendMessageParamsImplCopyWith(_$SendMessageParamsImpl value,
          $Res Function(_$SendMessageParamsImpl) then) =
      __$$SendMessageParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic> context,
      @JsonKey(name: 'post_data') SendMessagePostData postData,
      @JsonKey(name: 'thread_id') int threadId,
      @JsonKey(name: 'thread_model') String threadModel});

  @override
  $SendMessagePostDataCopyWith<$Res> get postData;
}

/// @nodoc
class __$$SendMessageParamsImplCopyWithImpl<$Res>
    extends _$SendMessageParamsCopyWithImpl<$Res, _$SendMessageParamsImpl>
    implements _$$SendMessageParamsImplCopyWith<$Res> {
  __$$SendMessageParamsImplCopyWithImpl(_$SendMessageParamsImpl _value,
      $Res Function(_$SendMessageParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? postData = null,
    Object? threadId = null,
    Object? threadModel = null,
  }) {
    return _then(_$SendMessageParamsImpl(
      context: null == context
          ? _value._context
          : context // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      postData: null == postData
          ? _value.postData
          : postData // ignore: cast_nullable_to_non_nullable
              as SendMessagePostData,
      threadId: null == threadId
          ? _value.threadId
          : threadId // ignore: cast_nullable_to_non_nullable
              as int,
      threadModel: null == threadModel
          ? _value.threadModel
          : threadModel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendMessageParamsImpl implements _SendMessageParams {
  const _$SendMessageParamsImpl(
      {required final Map<String, dynamic> context,
      @JsonKey(name: 'post_data') required this.postData,
      @JsonKey(name: 'thread_id') required this.threadId,
      @JsonKey(name: 'thread_model') required this.threadModel})
      : _context = context;

  factory _$SendMessageParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendMessageParamsImplFromJson(json);

  final Map<String, dynamic> _context;
  @override
  Map<String, dynamic> get context {
    if (_context is EqualUnmodifiableMapView) return _context;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_context);
  }

  @override
  @JsonKey(name: 'post_data')
  final SendMessagePostData postData;
  @override
  @JsonKey(name: 'thread_id')
  final int threadId;
  @override
  @JsonKey(name: 'thread_model')
  final String threadModel;

  @override
  String toString() {
    return 'SendMessageParams._(context: $context, postData: $postData, threadId: $threadId, threadModel: $threadModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageParamsImpl &&
            const DeepCollectionEquality().equals(other._context, _context) &&
            (identical(other.postData, postData) ||
                other.postData == postData) &&
            (identical(other.threadId, threadId) ||
                other.threadId == threadId) &&
            (identical(other.threadModel, threadModel) ||
                other.threadModel == threadModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_context),
      postData,
      threadId,
      threadModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageParamsImplCopyWith<_$SendMessageParamsImpl> get copyWith =>
      __$$SendMessageParamsImplCopyWithImpl<_$SendMessageParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendMessageParamsImplToJson(
      this,
    );
  }
}

abstract class _SendMessageParams implements SendMessageParams {
  const factory _SendMessageParams(
      {required final Map<String, dynamic> context,
      @JsonKey(name: 'post_data') required final SendMessagePostData postData,
      @JsonKey(name: 'thread_id') required final int threadId,
      @JsonKey(name: 'thread_model')
      required final String threadModel}) = _$SendMessageParamsImpl;

  factory _SendMessageParams.fromJson(Map<String, dynamic> json) =
      _$SendMessageParamsImpl.fromJson;

  @override
  Map<String, dynamic> get context;
  @override
  @JsonKey(name: 'post_data')
  SendMessagePostData get postData;
  @override
  @JsonKey(name: 'thread_id')
  int get threadId;
  @override
  @JsonKey(name: 'thread_model')
  String get threadModel;
  @override
  @JsonKey(ignore: true)
  _$$SendMessageParamsImplCopyWith<_$SendMessageParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SendMessagePostData _$SendMessagePostDataFromJson(Map<String, dynamic> json) {
  return _SendMessagePostData.fromJson(json);
}

/// @nodoc
mixin _$SendMessagePostData {
  @JsonKey(name: 'attachment_ids')
  List<int> get attachmentIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'attachment_tokens')
  List<int> get attachmentTokens => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_type')
  String get messageType => throw _privateConstructorUsedError;
  @JsonKey(name: 'partner_ids')
  List<int> get partnerIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtype_xmlid')
  String get subtypeXmlid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendMessagePostDataCopyWith<SendMessagePostData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessagePostDataCopyWith<$Res> {
  factory $SendMessagePostDataCopyWith(
          SendMessagePostData value, $Res Function(SendMessagePostData) then) =
      _$SendMessagePostDataCopyWithImpl<$Res, SendMessagePostData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'attachment_ids') List<int> attachmentIds,
      @JsonKey(name: 'attachment_tokens') List<int> attachmentTokens,
      String body,
      @JsonKey(name: 'message_type') String messageType,
      @JsonKey(name: 'partner_ids') List<int> partnerIds,
      @JsonKey(name: 'subtype_xmlid') String subtypeXmlid});
}

/// @nodoc
class _$SendMessagePostDataCopyWithImpl<$Res, $Val extends SendMessagePostData>
    implements $SendMessagePostDataCopyWith<$Res> {
  _$SendMessagePostDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attachmentIds = null,
    Object? attachmentTokens = null,
    Object? body = null,
    Object? messageType = null,
    Object? partnerIds = null,
    Object? subtypeXmlid = null,
  }) {
    return _then(_value.copyWith(
      attachmentIds: null == attachmentIds
          ? _value.attachmentIds
          : attachmentIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      attachmentTokens: null == attachmentTokens
          ? _value.attachmentTokens
          : attachmentTokens // ignore: cast_nullable_to_non_nullable
              as List<int>,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
      partnerIds: null == partnerIds
          ? _value.partnerIds
          : partnerIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      subtypeXmlid: null == subtypeXmlid
          ? _value.subtypeXmlid
          : subtypeXmlid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendMessagePostDataImplCopyWith<$Res>
    implements $SendMessagePostDataCopyWith<$Res> {
  factory _$$SendMessagePostDataImplCopyWith(_$SendMessagePostDataImpl value,
          $Res Function(_$SendMessagePostDataImpl) then) =
      __$$SendMessagePostDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'attachment_ids') List<int> attachmentIds,
      @JsonKey(name: 'attachment_tokens') List<int> attachmentTokens,
      String body,
      @JsonKey(name: 'message_type') String messageType,
      @JsonKey(name: 'partner_ids') List<int> partnerIds,
      @JsonKey(name: 'subtype_xmlid') String subtypeXmlid});
}

/// @nodoc
class __$$SendMessagePostDataImplCopyWithImpl<$Res>
    extends _$SendMessagePostDataCopyWithImpl<$Res, _$SendMessagePostDataImpl>
    implements _$$SendMessagePostDataImplCopyWith<$Res> {
  __$$SendMessagePostDataImplCopyWithImpl(_$SendMessagePostDataImpl _value,
      $Res Function(_$SendMessagePostDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attachmentIds = null,
    Object? attachmentTokens = null,
    Object? body = null,
    Object? messageType = null,
    Object? partnerIds = null,
    Object? subtypeXmlid = null,
  }) {
    return _then(_$SendMessagePostDataImpl(
      attachmentIds: null == attachmentIds
          ? _value._attachmentIds
          : attachmentIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      attachmentTokens: null == attachmentTokens
          ? _value._attachmentTokens
          : attachmentTokens // ignore: cast_nullable_to_non_nullable
              as List<int>,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
      partnerIds: null == partnerIds
          ? _value._partnerIds
          : partnerIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      subtypeXmlid: null == subtypeXmlid
          ? _value.subtypeXmlid
          : subtypeXmlid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendMessagePostDataImpl implements _SendMessagePostData {
  const _$SendMessagePostDataImpl(
      {@JsonKey(name: 'attachment_ids') required final List<int> attachmentIds,
      @JsonKey(name: 'attachment_tokens')
      required final List<int> attachmentTokens,
      required this.body,
      @JsonKey(name: 'message_type') required this.messageType,
      @JsonKey(name: 'partner_ids') required final List<int> partnerIds,
      @JsonKey(name: 'subtype_xmlid') required this.subtypeXmlid})
      : _attachmentIds = attachmentIds,
        _attachmentTokens = attachmentTokens,
        _partnerIds = partnerIds;

  factory _$SendMessagePostDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendMessagePostDataImplFromJson(json);

  final List<int> _attachmentIds;
  @override
  @JsonKey(name: 'attachment_ids')
  List<int> get attachmentIds {
    if (_attachmentIds is EqualUnmodifiableListView) return _attachmentIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachmentIds);
  }

  final List<int> _attachmentTokens;
  @override
  @JsonKey(name: 'attachment_tokens')
  List<int> get attachmentTokens {
    if (_attachmentTokens is EqualUnmodifiableListView)
      return _attachmentTokens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachmentTokens);
  }

  @override
  final String body;
  @override
  @JsonKey(name: 'message_type')
  final String messageType;
  final List<int> _partnerIds;
  @override
  @JsonKey(name: 'partner_ids')
  List<int> get partnerIds {
    if (_partnerIds is EqualUnmodifiableListView) return _partnerIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_partnerIds);
  }

  @override
  @JsonKey(name: 'subtype_xmlid')
  final String subtypeXmlid;

  @override
  String toString() {
    return 'SendMessagePostData(attachmentIds: $attachmentIds, attachmentTokens: $attachmentTokens, body: $body, messageType: $messageType, partnerIds: $partnerIds, subtypeXmlid: $subtypeXmlid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessagePostDataImpl &&
            const DeepCollectionEquality()
                .equals(other._attachmentIds, _attachmentIds) &&
            const DeepCollectionEquality()
                .equals(other._attachmentTokens, _attachmentTokens) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            const DeepCollectionEquality()
                .equals(other._partnerIds, _partnerIds) &&
            (identical(other.subtypeXmlid, subtypeXmlid) ||
                other.subtypeXmlid == subtypeXmlid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_attachmentIds),
      const DeepCollectionEquality().hash(_attachmentTokens),
      body,
      messageType,
      const DeepCollectionEquality().hash(_partnerIds),
      subtypeXmlid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessagePostDataImplCopyWith<_$SendMessagePostDataImpl> get copyWith =>
      __$$SendMessagePostDataImplCopyWithImpl<_$SendMessagePostDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendMessagePostDataImplToJson(
      this,
    );
  }
}

abstract class _SendMessagePostData implements SendMessagePostData {
  const factory _SendMessagePostData(
      {@JsonKey(name: 'attachment_ids') required final List<int> attachmentIds,
      @JsonKey(name: 'attachment_tokens')
      required final List<int> attachmentTokens,
      required final String body,
      @JsonKey(name: 'message_type') required final String messageType,
      @JsonKey(name: 'partner_ids') required final List<int> partnerIds,
      @JsonKey(name: 'subtype_xmlid')
      required final String subtypeXmlid}) = _$SendMessagePostDataImpl;

  factory _SendMessagePostData.fromJson(Map<String, dynamic> json) =
      _$SendMessagePostDataImpl.fromJson;

  @override
  @JsonKey(name: 'attachment_ids')
  List<int> get attachmentIds;
  @override
  @JsonKey(name: 'attachment_tokens')
  List<int> get attachmentTokens;
  @override
  String get body;
  @override
  @JsonKey(name: 'message_type')
  String get messageType;
  @override
  @JsonKey(name: 'partner_ids')
  List<int> get partnerIds;
  @override
  @JsonKey(name: 'subtype_xmlid')
  String get subtypeXmlid;
  @override
  @JsonKey(ignore: true)
  _$$SendMessagePostDataImplCopyWith<_$SendMessagePostDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
