import 'package:flutter/material.dart';
import '../views/pages/miradiDetals.dart';
import '../../controllers/inayoendeleaCardController.dart';

class InayoendeleaCardWidget extends StatefulWidget {
  const InayoendeleaCardWidget({
    super.key,
  });

  @override
  State<InayoendeleaCardWidget> createState() => _InayoendeleaCardWidgetState();
}

class _InayoendeleaCardWidgetState extends State<InayoendeleaCardWidget> {
  final inayoendeleaCardController = InayoendeleaCardController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: SizedBox(
          height: 150,
          child: ListView.builder(
              itemCount:
                  inayoendeleaCardController.inayoendeleaCardDetails.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final inayoendeleaCardDetails =
                    inayoendeleaCardController.inayoendeleaCardDetails[index];
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: SizedBox(
                      width: 250.0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => MiradiDetailDialog(
                                      inayoendeleaCardDetails:
                                          inayoendeleaCardDetails)));
                        },
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      inayoendeleaCardDetails
                                          .inayoendeleaCard_details
                                          .last
                                          .imageUrl,
                                      height: 140,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          width: 300,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.black87.withOpacity(0.5),
                                            borderRadius:
                                                BorderRadius.circular(15),

                                            // borderRadius: BorderRadius.only(
                                            //   topLeft: Radius.circular(20),
                                            //   bottomLeft: Radius.circular(20),
                                            // ),
                                          ),
                                          child: Center(
                                            child: Column(
                                              children: [
                                                Text(
                                                  inayoendeleaCardDetails
                                                      .inayoendeleaCard_details
                                                      .last
                                                      .title,
                                                  style: const TextStyle(
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  inayoendeleaCardDetails
                                                      .inayoendeleaCard_details
                                                      .last
                                                      .subtitle,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                  style: const TextStyle(
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              })),
    );
  }
}
