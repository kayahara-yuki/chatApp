import 'dart:ui';

import 'package:chat_app/repository/chate_repository.dart';
import 'package:chat_app/state/chat_page_state/chat_page_state.dart';
import 'package:state_notifier/state_notifier.dart';

import '../model/chat_model.dart';

class ChatPageViewModel extends StateNotifier<ChatPageState> with LocatorMixin {
  ChatPageViewModel() : super(const ChatPageState());
  final _repository = ChatRepository();

  @override
  void initState() async {
    startStream();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void setMessage(String message) {
    state = state.copyWith(message: message);
  }

  void startStream() async {
    _repository.getChatByStream().listen((chats) {
      state = state.copyWith(
        chats: chats,
      );
    });
  }

  Future<void> finish(String id) async {
    if (state.message.isNotEmpty) {
      final json = ChatModel();
      final data = json.copyWith(
        id: id,
        message: state.message,
      );
      await _repository.createChat(
        data.toJson(),
      );
    }
  }
}
