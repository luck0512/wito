import 'package:flutter/material.dart';

import '../../widgets/featured_card_widget.dart';
import '../../widgets/ilioyokamilika.dart';
import '../../widgets/inayoendelea_widget.dart';

class TaasisiScreen extends StatefulWidget {
  const TaasisiScreen({super.key});

  @override
  State<TaasisiScreen> createState() => _TaasisiScreenState();
}

class _TaasisiScreenState extends State<TaasisiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
       
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Featured',
                            style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          )),
                      // TextButton(
                      //     onPressed: () {},
                      //     child: const Row(
                      //       children: [
                      //         Text(
                      //           'Tazama Zaidi ',
                      //           style: TextStyle(
                      //               color: Color(0xFF1798D1),
                      //               fontWeight: FontWeight.bold),
                      //         ),
                      //         Icon(
                      //           Icons.chevron_right,
                      //         ),
                      //       ],
                      //     ))
                    ],
                  ),
                ),
                const FeaturedCardWidget(),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 8, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Miradi Inayoendelea',
                            style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          )),
                      
                    ],
                  ),
                ),
                const InayoendeleaCardWidget(),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 8, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Miradi iliyo kamilika',
                            style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          )),
                      
                    ],
                  ),
                ),
                const IliyokamilikaWidget(),
              ],
            ),
          ]))
        ],
      ),
    );

  }
}