import 'package:chat_bot/helper/pref.dart';
import 'package:flutter/material.dart';
import 'package:chat_bot/helper/global.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    Pref.showOnBoarding = false;
  }

  @override
  Widget build(BuildContext context) {
    //Initializng device size
    mq = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Center(child: Text("Welcome to home screen")),
    );
  }
}
