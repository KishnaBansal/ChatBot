import 'package:chat_bot/helper/global.dart';
import 'package:chat_bot/helper/pref.dart';
import 'package:chat_bot/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //A small NoSql database is initialize dusing Hive
  Hive.defaultDirectory = (await getApplicationDocumentsDirectory()).path;
  //init hive
  Pref.initialize();
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  runApp(const MyApp());
}

extension on HiveInterface {
  set defaultDirectory(String defaultDirectory) {}
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.sizeOf(context);
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
