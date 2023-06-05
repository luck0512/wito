
import 'package:flutter/material.dart';
import 'package:wito_app/screens/homepage.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/welcome.jpeg",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            color: Colors.black.withOpacity(0.6),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/logo/Logo.png",
                  height: 120,
                  width: 120,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Center(
                      child: Text(
                          '             Ujumbe wenye namba ya uthibitisho.\n umetumwa kwenye namba yako ya simu **568.\n           tafadhali ingiza hiyo namba hapa chini',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          )),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Namba ya uthibitisho",
                        hintStyle: TextStyle(color: Color(0xDD504F4F)),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder()),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 160,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ));
                        },
                        child: const Text(
                          "Thibitisha",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
