// // ignore_for_file: prefer_typing_uninitialized_variables

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class MyTextField extends StatelessWidget {
//   final controller;
//   final String hintText;
//   final bool obscureText;
//   const MyTextField({
//     super.key,
//     required this.controller,
//     required this.hintText,
//     required this.obscureText,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: SizedBox(
//         height: 45,
//         child: TextField(
//           controller: controller,
//           obscureText: obscureText,
//           decoration: InputDecoration(
//             enabledBorder: const OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: Colors.white,
//               ),
//             ),
//             focusedBorder: const OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.white),
//             ),
//             fillColor: Colors.grey[200],
//             filled: true,
//             hintText: hintText,
//             hintStyle: GoogleFonts.lato(
//             color: Colors.grey,  
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
