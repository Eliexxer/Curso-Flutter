import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController scrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();
  List<Message> messages = [
    Message(text: 'Hola', fromWho: FromWho.me),
    Message(
      text: 'Como estas?',
      fromWho: FromWho.her,
      imageUrl: 'https://media3.giphy.com/media/v1.Y2lkPWFmMzk1ZjIwcnk2NXR2MzcweDRrMG5vZmp2OGdoeXc0amgzeHFkZ2Y1YTVkcjZzdSZlcD12MV9naWZzX3JhbmRvbSZjdD1n/6gc9F8lIXW8CF74iUH/giphy.gif',
    ),
  ];

  Future<void> sendMessage(String text) async {
    if (text.trim().isEmpty) return;

    final newMessage = Message(text: text, fromWho: FromWho.me);
    messages.add(newMessage);
    if (text.trim().endsWith('?')) {
      getHerMessage();
    }
    notifyListeners();
    scrollToBottom();
  }

  Future<void> getHerMessage() async {
    final herMessage = await getYesNoAnswer.getAnswer();
    messages.add(herMessage);
    notifyListeners();
    scrollToBottom();
  }

  Future<void> scrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    if (!scrollController.hasClients) return;
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
