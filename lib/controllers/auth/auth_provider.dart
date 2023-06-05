// import 'dart:convert';

// import 'package:flutter/foundation.dart';
// // ignore: depend_on_referenced_packages
// import 'package:http/http.dart' as http;

// class AuthProvider with ChangeNotifier {
//   // API endpoint URLs
//   static const String baseUrl = 'http://172.16.56.175:8080/api/auth';
//   static const String registerUrl = '$baseUrl/register/';
//   static const String loginUrl = '$baseUrl/';

//   Future<void> register({
//     required String firstname,
//     required String lastname,
//     required String password,
//     required String confirmPassword,
//     required String nidaNumber,
//     required String accountNumber,
//     required String phoneNumber,
//   }) async {
//     try {
//       // Make the API call to register
//       final requestBody = {
//         'first_name': firstname,
//         'last_name': lastname,
//         'password': password,
//         'password2': confirmPassword,
//         'phone_number': accountNumber,
//         'nida_number': nidaNumber,
//       };

//       final response = await http.post(
//         Uri.parse(registerUrl),
//         headers: {
//           'Content-Type': 'application/json', // Set the content type to JSON
//         },
//         body: json.encode(requestBody),
//       );
//       // Check the response status code
//       if (response.statusCode == 200) {
//         // Registration successful
//         // Implement any necessary logic
//         // Notify listeners if required
//         if (kDebugMode) {
//           print('Registration successful');
//         }
//       } else {
//         // Handle registration failure
//         // Implement any necessary error handling logic
//         if (kDebugMode) {
//           print('Registration response :${response.body}');
//         }
//       }
//     } catch (error) {
//       // Handle any exceptions or network errors
//       if (kDebugMode) {
//         print('An error occurred during registration: $error');
//       }
//     }
//   }

//   Future<void> login({
//     required String accountNumber,
//     required String password,
//   }) async {
//     try {
//       // Make the API call to login
//       final response = await http.post(
//         Uri.parse(loginUrl),
//         body: {
//           'account_number': accountNumber,
//           'password': password,
//         },
//       );

//       // Check the response status code
//       if (response.statusCode == 200) {
//         // Login successful
//         // Implement any necessary logic
//         // Notify listeners if required
//         if (kDebugMode) {
//           print('Login successful');
//         }
//       } else {
//         // Handle login failure
//         // Implement any necessary error handling logic
//         if (kDebugMode) {
//           print('Login failed');
//         }
//       }
//     } catch (error) {
//       // Handle any exceptions or network errors
//       if (kDebugMode) {
//         print('An error occurred during login: $error');
//       }
//     }
//   }

//   Future<void> verifyOtp({required String otp}) async {
//     // Implement OTP verification logic
//     // Make the necessary API call to verify OTP
//     // Handle the response and notify listeners if required
//   }
// }
