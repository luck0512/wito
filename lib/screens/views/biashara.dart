
import 'package:wito_app/screens/views/pages/binafsi.dart';
import 'package:wito_app/screens/views/pages/taasisi.dart';
import 'package:flutter/material.dart';

import '../../controllers/yaliojiriController.dart';
import '../../controllers/featuredCardController.dart';

class BiasharaSCreen extends StatefulWidget {
  const BiasharaSCreen({super.key});

  @override
  State<BiasharaSCreen> createState() => _MiradiScreenState();
}

class _MiradiScreenState extends State<BiasharaSCreen> with SingleTickerProviderStateMixin{
  //final user = FirebaseAuth.instance.currentUser!;
  final featuredCardController = FeaturedCardController();

  final yaliyojiriCardController = YaliojiriCardController();
  late TabController _tabController;

    @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

    @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Biashara'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Taasisi'),
              Tab(text: 'Binafsi')
            ],
          ),
        ),
        body: const TabBarView(
          children: [TaasisiScreen(), BinafsiScreen()],
        ),
      ),
    );
  }
}

