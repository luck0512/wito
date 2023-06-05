// import 'package:flutter/material.dart';
// import 'package:wito/pages/sign_up.dart';
// import 'package:wito/pages/sing_in.dart';

// class SignInOrSignUpPage extends StatefulWidget {
//   const SignInOrSignUpPage({super.key});

//   @override
//   State<SignInOrSignUpPage> createState() => _SignInOrSignUpPageState();
// }

// class _SignInOrSignUpPageState extends State<SignInOrSignUpPage> {
//   //first show sign in page
//   bool showSignInPage = true;

//   // taggle between sign in and sign up page
//   void tagglePages() {
//     setState(() {
//       showSignInPage = !showSignInPage;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (showSignInPage) {
//       return SignIn(
//         onTap: tagglePages,
//       );
//     } else {
//       return SignUp(
//         onTap: tagglePages,
//       );
//     }
//   }
// }
