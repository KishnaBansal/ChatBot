import 'package:chat_bot/helper/global.dart';
import 'package:chat_bot/models/onBoard.dart';
import 'package:chat_bot/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.sizeOf(context);
    final _pageController = PageController();
    final list = [
      OnBoard(
        title: "Ask Me Anything",
        subtitle: "You can ask me anything, I am there to assist you",
        lottie: "ai_ask_me",
      ),
      OnBoard(
        title: "Imagination to reality",
        subtitle:
            "Just imagine and tell me, I will create something interesting for you",
        lottie: "ai_welcome",
      ),
    ];
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: list.length,
        itemBuilder: (context, index) {
          final isLast = index == list.length - 1;
          return Column(
            children: [
              //Lottie
              Lottie.asset(
                "assets/lottie/${list[index].lottie}.json",
                height: mq.height * 0.6,
              ),
              //title
              Text(
                list[index].title,
                style: TextStyle(
                  fontSize: mq.width * 0.054,
                  fontWeight: FontWeight.w900,
                  letterSpacing: .5,
                ),
              ),
              SizedBox(height: mq.height * 0.015),
              //subtitle
              SizedBox(
                width: mq.width * 0.7,
                child: Text(
                  list[index].subtitle,
                  style: TextStyle(
                      fontSize: mq.width * 0.04,
                      letterSpacing: .5,
                      color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
              ),
              //dots
              const Spacer(),
              Wrap(
                spacing: 10,
                children: List.generate(
                  list.length,
                  (i) => Container(
                    width: i == index ? 15 : 10,
                    height: 8,
                    decoration: BoxDecoration(
                      color: i == index
                          ? const Color.fromARGB(255, 110, 48, 211)
                          : Colors.grey,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              //button
              ElevatedButton(
                onPressed: () {
                  if (isLast) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  } else {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 600),
                      curve: Curves.easeInOutCirc,
                    );
                  }
                },
                child: Text(isLast ? "Finish" : "Next"),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  minimumSize: Size(mq.width * 0.4, 50),
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              const Spacer(flex: 2),
            ],
          );
        },
      ),
    );
  }
}
