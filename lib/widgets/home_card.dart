import 'package:chat_bot/helper/global.dart';
import 'package:chat_bot/models/home_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

class HomeCard extends StatelessWidget {
  final HomeType homeType;
  const HomeCard({super.key,required this.homeType});

  @override
  Widget build(BuildContext context) {
     //Only for developing phase
     Animate.restartOnHotReload = true;
    return Card(
      color: Colors.blue.withOpacity(0.2),
      elevation: 0,
      margin: EdgeInsets.only(bottom: mq.height*0.02),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: homeType.leftAlign ? Row(
        children: [
          //lottie
          Lottie.asset("assets/lottie/${homeType.lottie}", width: mq.width * 0.40),
          const Spacer(),
          //text
          Padding(
            padding: homeType.padding,
            child: Text(
              homeType.title,
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w500, letterSpacing: 1),
            ),
          ),
          const Spacer(flex: 2)
        ],
      ) :  Row(
        children: [
          const Spacer(flex: 3,),
          
          //text
          Padding(
            padding: homeType.padding,
            child: Text(
              homeType.title,
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w500, letterSpacing: 1),
            ),
          ),
          const Spacer(flex: 2,),
          //lottie
          Lottie.asset("assets/lottie/${homeType.lottie}", width: mq.width * 0.40),
          const Spacer(flex: 1,),

        ],
      )
    ).animate()
          .flipV(duration: 1.seconds);
  }
}
