import 'package:flutter/material.dart';
import 'package:tech_shop/global_widgets/appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(text: "Home Page"),
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
