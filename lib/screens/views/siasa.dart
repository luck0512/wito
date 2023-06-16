import 'package:flutter/material.dart';
import 'package:wito_app/themes/colors.dart';

class SiasaScreen extends StatefulWidget {
  const SiasaScreen({super.key});

  @override
  State<SiasaScreen> createState() => _SiasaScreenState();
}

class _SiasaScreenState extends State<SiasaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.primaryColor,
        elevation: 0,
        title: Text("Siasa"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.wallet)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.timer,
              size: 80,
              color: Colors.grey,
            ),
            SizedBox(height: 20),
            Text(
              "Inakuja hivi karibuni",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Endelea kuwa tayari kwa habari za kusisimua!",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}