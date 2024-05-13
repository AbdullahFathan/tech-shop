import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tech_shop/firebase_options.dart';

class InitializeApp {
  static Future<void> init() async {
    await _firebaseInit();
    await _envInit();
  }

  static Future<void> _envInit() async {
    await dotenv.load(fileName: ".env");
  }

  static Future<void> _firebaseInit() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
