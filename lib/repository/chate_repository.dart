import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/chat_model.dart';

class ChatRepository {
  Future<void> createChat(Map<String, dynamic> json) async {
    try {
      final _db = FirebaseFirestore.instance;
      final collectionRef = _db.collection('chats');
      final docId = collectionRef.doc().id;
      await collectionRef.doc(docId).set(
            json,
            SetOptions(merge: true),
          );
    } catch (e) {
      print('あああ');
    }
  }

  ///Streamの場合
  Stream<List<ChatModel>> getChatByStream() {
    final _db = FirebaseFirestore.instance;
    final dataList = _db.collection('chats').snapshots();
    final res = dataList.map((event) => event.docs
        .map((e) => ChatModel.fromJson(e.data()))
        .toList()
        .reversed
        .toList());
    return res;
  }
}
