import 'package:flutter/material.dart';

import '../../../themes/colors.dart';

class nunuaHisaWidget extends StatelessWidget {
  const nunuaHisaWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.sell,
            size: 48.0,
            color: Colors.greenAccent,
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Nunua Hisa za Mradi',
            style: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16.0),
          const SizedBox(
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                isCollapsed: false,
                labelText: 'Weka Kiasi',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 6.0),
          const SizedBox(
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                isCollapsed: false,
                labelText: 'Weka NenoSiri',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
          ),
          const SizedBox(height: 16.0),
          const SizedBox(
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                isCollapsed: false,
                labelText: 'Rudia NenoSiri',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 50.0),
          SizedBox(
            height: 50,
            width: 500,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Styles.primaryColor,
              ),
              child: const Text('Kamilisha'),
            ),
          ),
        ],
      ),
    );
  }
}
