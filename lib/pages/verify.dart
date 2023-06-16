import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../screens/homepage.dart';

class OtpScreen extends StatefulWidget {
  final String refreshToken;
  final String accessToken;

  OtpScreen({required this.refreshToken, required this.accessToken});

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  List<String> verificationCode = List<String>.filled(6, '');
  int currentBoxIndex = 0;
  bool isLoading = false;

  void _onCodeChanged(String value) {
    setState(() {
      verificationCode[currentBoxIndex] = value;
      if (currentBoxIndex < verificationCode.length - 1) {
        currentBoxIndex++;
      } else {
        // All boxes are filled, simulate verification process
        isLoading = true;
        _verifyOtp(verificationCode.join(''), widget.accessToken);
      }
    });

    // Move to the next box automatically
    if (value.isNotEmpty && currentBoxIndex < verificationCode.length - 1) {
      FocusScope.of(context).nextFocus();
    }
  }

  Future<void> _verifyOtp(String verificationCode, String accessToken) async {
    final url = Uri.parse('http://3.109.82.192/api/auth/otp/');

    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    };

    final body = jsonEncode({
      'otp_code': verificationCode,
    });

    try {
      setState(() {
        isLoading = true;
      });

      final response = await http.post(url, headers: headers, body: body);

      setState(() {
        isLoading = false;
      });

      if (response.statusCode == 200) {
        Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
      } else {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Verification Error'),
              content: Text('An error occurred during verification. Please try again.'),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    } catch (error) {
      print('Verification error: $error');
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Verification Error'),
            content: Text('An error occurred during verification. Please try again. '),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  List<Widget> buildCodeBoxes() {
    List<Widget> codeBoxes = [];
    for (int i = 0; i < verificationCode.length; i++) {
      codeBoxes.add(
        Container(
          width: 50,
          height: 60,
          margin: EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            border: Border.all(width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: TextFormField(
              onChanged: (value) => _onCodeChanged(value),
              maxLength: 1,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
              decoration: InputDecoration(
                counterText: '',
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      );
    }
    return codeBoxes;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: isLoading
            ? CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.verified_user,
                    size: 80,
                    color: Colors.blue,
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Enter the verification code sent to your number',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: buildCodeBoxes(),
                  ),
                  SizedBox(height: 24),
                ],
              ),
      ),
    );
  }
}
