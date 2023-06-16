import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wito_app/pages/sing_in.dart';
import 'package:wito_app/themes/colors.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ));
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(
          // onTap: () {},
          ),
    );
  }
}
