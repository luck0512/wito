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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Styles.primaryColor,systemNavigationBarColor: Styles.whiteColor));
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(
          // onTap: () {},
          ),
    );
  }
}
