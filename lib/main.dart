import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_shop/config/routes/routes_name.dart';
import 'package:tech_shop/config/routes/routes_page.dart';
import 'package:tech_shop/initialzer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await InitializeApp.init();

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
      initialRoute: RoutesName.login,
      getPages: AppRoute.pages,
    );
  }
}
