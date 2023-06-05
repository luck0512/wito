
import '../../themes/colors.dart';
import 'package:flutter/material.dart';
import '../widgets/ilioyokamilika.dart';
import '../widgets/inayoendelea_widget.dart';
import '../widgets/featured_card_widget.dart';
import '../../controllers/yaliojiriController.dart';
import '../../controllers/featuredCardController.dart';

class BiasharaBinafsiSCreen extends StatefulWidget {
  const BiasharaBinafsiSCreen({super.key});

  @override
  State<BiasharaBinafsiSCreen> createState() => _MiradiScreenState();
}

class _MiradiScreenState extends State<BiasharaBinafsiSCreen> {
  //final user = FirebaseAuth.instance.currentUser!;
  final featuredCardController = FeaturedCardController();

  final yaliyojiriCardController = YaliojiriCardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: BottomAppBar(
              elevation: 0,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Taasisi',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  
                  TextButton(
                    onPressed: () {
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const BiasharaBinafsiSCreen()));
                    },
                    child: const Text(
                      'Binafsi',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
          ),
        ),
      
      backgroundColor: Styles.lightCOlor,
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
