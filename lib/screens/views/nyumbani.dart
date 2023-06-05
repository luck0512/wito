import '../../themes/colors.dart';
import 'package:flutter/material.dart';
import '../widgets/ilioyokamilika.dart';
import '../widgets/inayoendelea_widget.dart';
import '../widgets/featured_card_widget.dart';
import '../../controllers/yaliojiriController.dart';
import '../../controllers/featuredCardController.dart';

class NyumbaniScreen extends StatelessWidget {
  NyumbaniScreen({super.key});

  //final user = FirebaseAuth.instance.currentUser!;
  final featuredCardController = FeaturedCardController();

  final yaliyojiriCardController = YaliojiriCardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.primaryColor,
        title: const Text('WITO'),
        
      actions: [
        IconButton(
          onPressed: () {
            // Handle the onPressed event for notifications
          },
          icon: const Icon(Icons.notifications,color: Colors.white,),
        ),
      ],
      iconTheme: IconThemeData(color: Styles.primaryColor),
      ),
      backgroundColor: Styles.lightCOlor,
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 8, right: 10),
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
