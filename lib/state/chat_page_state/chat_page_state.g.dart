// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatPageState _$$_ChatPageStateFromJson(Map<String, dynamic> json) =>
    _$_ChatPageState(
      chats: (json['chats'] as List<dynamic>?)
              ?.map((e) => ChatModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ChatModel>[],
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$_ChatPageStateToJson(_$_ChatPageState instance) =>
    <String, dynamic>{
      'chats': instance.chats,
      'message': instance.message,
    };
