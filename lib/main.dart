import 'package:flutter/material.dart';
import 'package:ticket_app_flutter/screens/botton_bar.dart';
import 'package:ticket_app_flutter/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: primary),
      home: const BottomBar(),
    );
  }
}
