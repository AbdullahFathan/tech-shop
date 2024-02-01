import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:tech_shop/config/routes/routes_name.dart';
import 'package:tech_shop/config/routes/routes_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: "Roboto",
      ),
      initialRoute: RoutesName.appNavBar,
      getPages: AppRoute.pages,
    );
  }
}
