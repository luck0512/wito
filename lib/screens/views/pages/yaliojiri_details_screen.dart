import 'package:wito_app/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../../../controllers/yaliojiriController.dart';

class YaliojiriDetailScreen extends StatefulWidget {
  final YaliojiriCardDetails yaliyojiriCardDetails;
  const YaliojiriDetailScreen({super.key, required this.yaliyojiriCardDetails});

  @override
  State<YaliojiriDetailScreen> createState() => _YaliojiriDetailScreenState();
}

class _YaliojiriDetailScreenState extends State<YaliojiriDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Styles.lightCOlor,
          elevation: 0,
          title: Text(
            'Kuhusu Mradi',
            style: TextStyle(color: Styles.darkCOlor),
          ),
          iconTheme: IconThemeData(color: Styles.primaryColor),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(widget.yaliyojiriCardDetails.yaliojiriCard_details
                      .last.imageUrl),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        Text(
                          widget.yaliyojiriCardDetails.yaliojiriCard_details
                              .last.title,
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Styles.primaryColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            Icon(Icons.person),
                            Text('Admin, Serikali'),
                            SizedBox(
                              width: 10,
                            ),
                            Text('June,2023')
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          widget.yaliyojiriCardDetails.yaliojiriCard_details
                              .last.subtitle,
                          style: TextStyle(
                              color: Styles.primaryColor, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(lorem(paragraphs: 8, words: 600))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
