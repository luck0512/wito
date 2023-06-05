
import 'nunua_hisa.dart';
import 'package:flutter/material.dart';
import 'package:wito_app/themes/colors.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:wito_app/screens/views/pages/uza_hisa.dart';
import '../../../controllers/inayoendeleaCardController.dart';


class MiradiDetailDialog extends StatefulWidget {
  final InayoendeleaCardDetails inayoendeleaCardDetails;
  const MiradiDetailDialog({super.key, required this.inayoendeleaCardDetails,});

  @override
  State<MiradiDetailDialog> createState() => _MiradiDetailDialogState();
}

class _MiradiDetailDialogState extends State<MiradiDetailDialog> {

  int _pageindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.lightCOlor,
        elevation: 0,
        title: Text(
         widget.inayoendeleaCardDetails.inayoendeleaCard_details.last.title,
          style: TextStyle(color: Styles.darkCOlor),
        ),
        iconTheme: IconThemeData(color: Styles.primaryColor),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        widget.inayoendeleaCardDetails.inayoendeleaCard_details.last.imageUrl,),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                children: [
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: SizedBox(
                      width: 160.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 5, left: 5, right: 5),
                            child: Image.asset(
                              'assets/images/Houses_3.jpg',
                              height: 100,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: SizedBox(
                      width: 160.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 5, left: 5, right: 5),
                            child: Image.asset(
                              widget.inayoendeleaCardDetails.inayoendeleaCard_details.last.imageUrl,
                              height: 100,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'Jina la mradi :',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(widget.inayoendeleaCardDetails.inayoendeleaCard_details.last.title,),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
              child: SizedBox(
                height: 0.5,
                child: Container(
                  color: Styles.darkCOlor,
                ),
              ),
            ),
            Container(
              child: ListTile(
                contentPadding: const EdgeInsets.only(top: 5, left: 10),
                minVerticalPadding: 5.5,
                title: Text('Kuhusu Mradi',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Styles.darkCOlor)),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(lorem(paragraphs: 1, words: 90)),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 0),
                  child: SizedBox(
                    height: 50,
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const AlertDialog(
                                content: SizedBox(
                                  height: 500,
                                  width: double.infinity,
                                  child: nunuaHisaWidget(),
                                ),
                              );
                            });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Styles.primaryColor,
                      ),
                      child: const Text(
                        "Nunua Hisa",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xDDFFFFFF)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const AlertDialog(
                                content: SizedBox(
                                  height: 500,
                                  width: double.infinity,
                                  child: uzaHisaWidget(),
                                ),
                              );
                            });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Styles.primaryColor,
                      ),
                      child: const Text(
                        "Uza Hisa",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xDDFFFFFF)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: SizedBox(
                    height: 50,
                    width: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const AlertDialog(
                                content: SizedBox(
                                  height: 500,
                                  width: double.infinity,
                                  child: uzaHisaWidget(),
                                ),
                              );
                            });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Styles.primaryColor,
                      ),
                      child: const Text(
                        "Miadi ya Kazi",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xDDFFFFFF)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Styles.primaryColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: _pageindex,
          onTap: (value) {
            setState(() {
              _pageindex = value;
            });
          },
          unselectedItemColor: Styles.lightCOlor,
          selectedItemColor: Styles.whiteColor,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Nyumbani'),
            BottomNavigationBarItem(
                icon: Icon(Icons.payments), label: 'Biashara'),
            BottomNavigationBarItem(
                icon: Icon(Icons.business_center), label: 'Miradi'),
            // BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Siasa'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Mpangilio'),
          ]),
      
    );
  }
}

