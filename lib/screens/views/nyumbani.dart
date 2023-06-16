import '../../themes/colors.dart';
import 'package:flutter/material.dart';
import '../widgets/ilioyokamilika.dart';
import '../widgets/inayoendelea_widget.dart';
import '../widgets/featured_card_widget.dart';
import '../../controllers/yaliojiriController.dart';
import '../../controllers/featuredCardController.dart';

class NyumbaniScreen extends StatefulWidget {
  NyumbaniScreen({Key? key}) : super(key: key);

  @override
  _NyumbaniScreenState createState() => _NyumbaniScreenState();
}

class _NyumbaniScreenState extends State<NyumbaniScreen> {
  final featuredCardController = FeaturedCardController();
  final yaliyojiriCardController = YaliojiriCardController();
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    // Simulate delay of 2 seconds before showing content
    Future.delayed(const Duration(seconds: 6), () {
      setState(() {
        isLoading = false;
      });
    });
  }

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
            icon: const Icon(
              Icons.wallet,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              // Handle the onPressed event for notifications
            },
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
        ],
        iconTheme:  IconThemeData(color: Styles.primaryColor),
      ),
      backgroundColor: Styles.lightCOlor,
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
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
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 500),
                      transitionBuilder: (widget, animation) {
                        return FadeTransition(
                          opacity: animation,
                          child: SizeTransition(
                            sizeFactor: animation,
                            child: widget,
                          ),
                        );
                      },
                      child: isLoading
                          ? SkeletonLoadingWidget() // Replace with your skeleton loading widget
                          : FeaturedCardWidget(),
                    ),
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
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                     AnimatedSwitcher(
                      duration: const Duration(milliseconds: 500),
                      transitionBuilder: (widget, animation) {
                        return FadeTransition(
                          opacity: animation,
                          child: SizeTransition(
                            sizeFactor: animation,
                            child: widget,
                          ),
                        );
                      },
                      child: isLoading
                          ? SkeletonLoadingWidget() // Replace with your skeleton loading widget
                          : InayoendeleaCardWidget(),
                    ),
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
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                     AnimatedSwitcher(
                      duration: const Duration(milliseconds: 500),
                      transitionBuilder: (widget, animation) {
                        return FadeTransition(
                          opacity: animation,
                          child: SizeTransition(
                            sizeFactor: animation,
                            child: widget,
                          ),
                        );
                      },
                      child: isLoading
                          ? SkeletonLoadingWidget() // Replace with your skeleton loading widget
                          : IliyokamilikaWidget(),
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


class SkeletonLoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        itemCount: 3, // Adjust the number of skeleton items as needed
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            width: 300,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(15),
            ),
          );
        },
      ),
    );
  }
}
