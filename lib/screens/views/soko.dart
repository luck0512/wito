import 'package:flutter/material.dart';

import '../../themes/colors.dart';

class SokoScreen extends StatefulWidget {
  const SokoScreen({Key? key}) : super(key: key);

  @override
  State<SokoScreen> createState() => _SokoScreenState();
}

class _SokoScreenState extends State<SokoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.lightCOlor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(color: Styles.lightCOlor),
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Colors.red, // Replace with your desired color code
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRJXdupugpbuaFtnXQCxe-W57gTacajWBltna7pfIS2mvyZBP0&s',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Samia Suluhu Hassan',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Tanzainia president',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 6),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              childAspectRatio: 1,
              children: [
                Card(
                  child: Container(
                    color: Colors.blue,
                    height: 40,
                    width: 40,
                    child: const Center(
                      child: Text(
                        'Serikali Kuu',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: 40,
                    width: 40,
                    color: const Color(0xFF998A01),
                    child: const Center(
                      child: Text(
                        'Mahakama',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: 40,
                    width: 40,
                    color: const Color(0xFFAC3904),
                    child: const Center(
                      child: Text(
                        'Bunge',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(6),
              child: const SingleChildScrollView(
                child: Text(
                  "Tanzania ni nchi iliyopo katika Afrika Mashariki na ina historia ndefu tangu kupata uhuru wake mnamo "
                  "tarehe 9 Desemba 1961. Hapa ni maelezo mafupi kuhusu marais, waziri mkuu, na makamu wa rais wa Tanzania "
                  "tangu kupata uhuru hadi sasa:",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 6),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              childAspectRatio: 1,
              children: [
                Card(
                  child: Container(
                    color: Colors.blue,
                    height: 20,
                    width: 20,
                    child: const Center(
                      child: Text(
                        'Binafsi',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: 20,
                    width: 20,
                    color: const Color(0xFF998A01),
                    child: const Center(
                      child: Text(
                        'Taasisi',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Card(
                    child: Container(
                      height: 20,
                      width: 20,
                      color: const Color(0xFFAC3904),
                      child: const Center(
                        child: Text(
                          'Taaluma',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
