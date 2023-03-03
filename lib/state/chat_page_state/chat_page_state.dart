import 'package:chat_app/model/chat_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_page_state.freezed.dart';
part 'chat_page_state.g.dart';

@freezed
class ChatPageState with _$ChatPageState {
  const factory ChatPageState({
    @Default(<ChatModel>[]) List<ChatModel> chats,
    @Default('') String message,
  }) = _ChatPageState;

  factory ChatPageState.fromJson(Map<String, dynamic> json) =>
      _$ChatPageStateFromJson(json);
}
