// import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:wito_app/themes/colors.dart';

// class NyumbaniPage extends StatelessWidget {
//   NyumbaniPage({super.key});

//   final user = FirebaseAuth.instance.currentUser!;

//   void signUserOut() {
//     FirebaseAuth.instance.signOut();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: const Color(0xFF1798D1),
//           iconTheme: IconThemeData(color: Styles.primaryColor),
//           actions: [
//             IconButton(
//               onPressed: signUserOut,
//               icon: const Icon(Icons.logout),
//             ),
//           ],
//         ),
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 25.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'Freatured',
//                 style: GoogleFonts.lato(
//                   fontSize: 14,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.grey.shade800,
//                 ),
//               ),
//               Text(
//                 'Tazama zaidi',
//                 style: GoogleFonts.lato(
//                   fontSize: 14,
//                   fontWeight: FontWeight.bold,
//                   color: const Color(0xFF1798D1),
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }
// }
