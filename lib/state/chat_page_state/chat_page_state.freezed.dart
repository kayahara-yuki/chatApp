// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatPageState _$ChatPageStateFromJson(Map<String, dynamic> json) {
  return _ChatPageState.fromJson(json);
}

/// @nodoc
mixin _$ChatPageState {
  List<ChatModel> get chats => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatPageStateCopyWith<ChatPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatPageStateCopyWith<$Res> {
  factory $ChatPageStateCopyWith(
          ChatPageState value, $Res Function(ChatPageState) then) =
      _$ChatPageStateCopyWithImpl<$Res, ChatPageState>;
  @useResult
  $Res call({List<ChatModel> chats, String message});
}

/// @nodoc
class _$ChatPageStateCopyWithImpl<$Res, $Val extends ChatPageState>
    implements $ChatPageStateCopyWith<$Res> {
  _$ChatPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      chats: null == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatPageStateCopyWith<$Res>
    implements $ChatPageStateCopyWith<$Res> {
  factory _$$_ChatPageStateCopyWith(
          _$_ChatPageState value, $Res Function(_$_ChatPageState) then) =
      __$$_ChatPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChatModel> chats, String message});
}

/// @nodoc
class __$$_ChatPageStateCopyWithImpl<$Res>
    extends _$ChatPageStateCopyWithImpl<$Res, _$_ChatPageState>
    implements _$$_ChatPageStateCopyWith<$Res> {
  __$$_ChatPageStateCopyWithImpl(
      _$_ChatPageState _value, $Res Function(_$_ChatPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
    Object? message = null,
  }) {
    return _then(_$_ChatPageState(
      chats: null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatPageState with DiagnosticableTreeMixin implements _ChatPageState {
  const _$_ChatPageState(
      {final List<ChatModel> chats = const <ChatModel>[], this.message = ''})
      : _chats = chats;

  factory _$_ChatPageState.fromJson(Map<String, dynamic> json) =>
      _$$_ChatPageStateFromJson(json);

  final List<ChatModel> _chats;
  @override
  @JsonKey()
  List<ChatModel> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatPageState(chats: $chats, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatPageState'))
      ..add(DiagnosticsProperty('chats', chats))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatPageState &&
            const DeepCollectionEquality().equals(other._chats, _chats) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_chats), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatPageStateCopyWith<_$_ChatPageState> get copyWith =>
      __$$_ChatPageStateCopyWithImpl<_$_ChatPageState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatPageStateToJson(
      this,
    );
  }
}

abstract class _ChatPageState implements ChatPageState {
  const factory _ChatPageState(
      {final List<ChatModel> chats, final String message}) = _$_ChatPageState;

  factory _ChatPageState.fromJson(Map<String, dynamic> json) =
      _$_ChatPageState.fromJson;

  @override
  List<ChatModel> get chats;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ChatPageStateCopyWith<_$_ChatPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
