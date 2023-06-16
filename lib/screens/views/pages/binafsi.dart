import 'package:flutter/material.dart';

class BinafsiScreen extends StatefulWidget {
  const BinafsiScreen({super.key});

  @override
  State<BinafsiScreen> createState() => _BinafsiScreenState();
}

class _BinafsiScreenState extends State<BinafsiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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