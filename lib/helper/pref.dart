// import 'package:chat_bot/helper/global.dart';
// import 'package:chat_bot/models/onBoard.dart';
// import 'package:hive/hive.dart';
// import 'package:path_provider/path_provider.dart';

// class Pref {
//   static late Box _box;
//   static Future<void> initialize() async {
//     Hive.defaultDirectory = (await getApplicationDocumentsDirectory()).path;
//     _box = Hive.box("myData");
//   }

//   static bool get showOnBoarding => _box.get("showOnBoarding", defaultValue: true);
//   static set showOnBoarding(bool v) => _box.put("showOnBoarding", v);
// }

// extension on HiveInterface {
//   set defaultDirectory(String defaultDirectory) {}
// }


import 'package:chat_bot/helper/global.dart';
import 'package:chat_bot/models/onBoard.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class Pref {
  static late Box _box;

  // Initialize the Hive box
  static Future<void> initialize() async {
    try {
      Hive.init((await getApplicationDocumentsDirectory()).path);
      _box = await Hive.openBox("myData");
    } catch (e) {
      // Handle any exceptions during initialization
      print("Error initializing Hive: $e");
    }
  }

  static bool get showOnBoarding => _box.get("showOnBoarding", defaultValue: true);
  static set showOnBoarding(bool v) => _box.put("showOnBoarding", v);
}
