import 'package:flutter/material.dart';

enum HomeType { aiChatBot, aiImage, aiTranslator }

extension MyHomeType on HomeType {
  String get title => switch (this) {
        HomeType.aiChatBot => "AI ChatBot",
        HomeType.aiImage => "AI Image Creator",
        HomeType.aiTranslator => "Language Translator",
      };
  //Lottie
  String get lottie => switch (this) {
        HomeType.aiChatBot => "ai_chat.json",
        HomeType.aiImage => "ai_ask_me.json",
        HomeType.aiTranslator => "ai_welcome.json",
      };
  //alignment
  bool get leftAlign => switch (this) {
        HomeType.aiChatBot => true,
        HomeType.aiImage => false,
        HomeType.aiTranslator => true,
      };
  //padding
  EdgeInsets get padding => switch (this) {
        HomeType.aiChatBot => EdgeInsets.zero,
        HomeType.aiImage => const EdgeInsets.all(20),
        HomeType.aiTranslator => const EdgeInsets.only(right: 12),
      };
}
