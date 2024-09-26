import 'package:chat_bot/helper/global.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue.withOpacity(0.2),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        children: [
          //lottie
          Lottie.asset("assets/lottie/ai_chat.json", width: mq.width * 0.40),
          Spacer(),
          //text
          Text(
            "AI ChatBot",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              letterSpacing: 1
            ),
          ),
          Spacer(flex: 2)
        ],
      ),
    );
  }
}
