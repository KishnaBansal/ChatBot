import 'package:chat_bot/helper/pref.dart';
import 'package:chat_bot/widgets/home_card.dart';
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
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        shadowColor: Colors.white,
        // backgroundColor: Colors.white,
        title: const Text(
          appName,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.blue),
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 10),
            onPressed: () {},
            icon: Icon(
              Icons.brightness_6,
              size: 28,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: mq.width*0.04,vertical: mq.height*0.01),
        children: [
          HomeCard(),
        ],
      ),
    );
  }
}
