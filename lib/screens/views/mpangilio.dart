import '../../themes/colors.dart';
import 'package:flutter/material.dart';




class MpangilioScreen extends StatefulWidget {
  const MpangilioScreen({super.key});

  @override
  State<MpangilioScreen> createState() => _MpangilioScreenState();
}

class _MpangilioScreenState extends State<MpangilioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.primaryColor,
        elevation: 0,
      title: const Text('Mipangilio'),
      
      ),
      backgroundColor: Styles.whiteColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: ListView(
          padding: const EdgeInsets.all(9),
          physics: const BouncingScrollPhysics(),
          children: [
            Container(
              height: 4,
            ),
            userTile(),
            // divider(),
            colorTiles()
          ],
        ),
      ),
    );
  }
}

Widget userTile() {
  String url = 'assets/icon/icon.png';
  return ListTile(
    leading: CircleAvatar(backgroundImage: AssetImage(url)),
    title: const Text(
      'Mgeni',
      style: TextStyle(fontWeight: FontWeight.w500,fontSize: 21,color:Colors.black45 ),
    ),
    subtitle: const Text('Mtumiaji asiyesajiliwa',style: TextStyle(color: Colors.blue),),
  );
}

Widget divider() {
  return const Padding(
    padding: EdgeInsets.all(9),
    child: Divider(
      thickness: 1.5,
    ),
  );
}

Widget colorTiles() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Akaunti',
            style: TextStyle(
              color: Styles.primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      colorTile(Icons.person, Styles.primaryColor, 'Wasifu'),
      colorTile(Icons.payments, Styles.primaryColor, 'pochi'),
      divider(),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Mipangilio ya jumla',
            style: TextStyle(
              color: Styles.primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      colorTile(Icons.info_outline, Styles.primaryColor, 'Kuhusu sisi'),
      colorTile(Icons.privacy_tip, Styles.primaryColor, 'Sera ya faragha'),
      colorTile(Icons.approval, Styles.primaryColor, 'Vigezo na masharti'),
      GestureDetector(
          onTap: () {
            
          },
          child: colorTile(Icons.logout, Styles.primaryColor, 'Kuondoka')),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'version 1.0',
            style: TextStyle(
              color: Styles.primaryColor,
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ],
  );
}

Widget colorTile(IconData icon, Color color, String txt) {
  return ListTile(
    leading: Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: color.withOpacity(0.0),
          borderRadius: BorderRadius.circular(18)),
      child: Icon(
        icon,
        color: color,
      ),
    ),
    title: Text(
      txt,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        color: Styles.darkCOlor,
      ),
    ),
    
  );
}
