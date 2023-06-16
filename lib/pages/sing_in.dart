import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wito_app/pages/sign_up.dart';
import 'package:wito_app/pages/verify.dart';
import 'package:wito_app/screens/homepage.dart';
import 'package:wito_app/themes/colors.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _nidaNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nidaNumberController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> login() async {
    if (_formKey.currentState!.validate()) {
      final accountNumber = _nidaNumberController.text;
      final password = _passwordController.text;

      final url = Uri.parse('http://3.109.82.192/api/auth/');
      final headers = {'Content-Type': 'application/json'};
      final body = json.encode({
        'account_number': accountNumber,
        'password': password,
      });

      try {
        final response = await http.post(url, headers: headers, body: body);

        if (response.statusCode == 200) {
          final responseData = json.decode(response.body);

          // Extract the access token and refresh token from the response
          final accessToken = responseData['access'];
          final refreshToken = responseData['refresh'];
          final csrfToken = responseData['csrf_token'];

          // Show success message and print the response
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Success'),
                content: Text('Login successful! Please verify your account:'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      // Navigate to the OTP screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => OtpScreen(accessToken: accessToken, refreshToken: refreshToken)),
                      );
                    },
                    child: const Text('OK'),
                  ),
                ],
              );
            },
          );
          print(response.body);
        } else {
          final errorData = json.decode(response.body);

          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Error'),
                content: Text(errorData['detail']),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK'),
                  ),
                ],
              );
            },
          );
        }
      } catch (error) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Error'),
              content: const Text('An error occurred. Please try again.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Styles.primaryColor,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(45.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/logo/Logo.png',
                            height: 90,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      'Tafadhali jaza taarifa zako',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 15.0),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        controller: _nidaNumberController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          fillColor: const Color(0xffeaf2f2),
                          filled: true,
                          prefixIcon: const Icon(Icons.person),
                          labelText: 'Namba ya Nida',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your Nida number';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: const Color(0xffeaf2f2),
                          filled: true,
                          prefixIcon: const Icon(Icons.lock),
                          labelText: 'Nenosiri',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (value.length < 6) {
                            return 'Password must be at least 6 characters long';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: login,
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xff0070ac),
                              onPrimary: Colors.white,
                            ),
                            child: const Text(
                              'Ingia',
                              style: TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => const HomeScreen()),
                              );
                            },
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Color(0xff0070ac)),
                            ),
                            child: const Text(
                              'Mgeni',
                              style: TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => Registration()),
                              );
                            },
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Color(0xff0070ac)),
                            ),
                            child: const Text(
                              'Jisajiri',
                              style: TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 140),
                    const Text(
                      'Mt 12:30',
                      style: TextStyle(color: Colors.white),
                    ),
                    const Text(
                      'He who is not with me is against me, and he who does not gather with me scatters',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 18),
                    const Text(
                      'wito@2023.Copyright reserved',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
