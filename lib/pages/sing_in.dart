import 'package:flutter/material.dart';
import 'package:wito_app/pages/sign_up.dart';
import 'package:wito_app/screens/homepage.dart';

// import 'package:google_fonts/google_fonts.dart';
// import 'package:wito/components/text_field.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:random_string/random_string.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:wito/components/my_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
// Changed from int _selectedRadio = 0; to int? _selectedRadio;


  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _nidaNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _phoneNumberController.dispose();
    _nidaNumberController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/welcome.jpeg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black54,
            BlendMode.darken,
          ),
        )),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(45.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 61.0,
                        right: 10.0,
                      ),
                    ),
                    const SizedBox(height: 45.0),
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/logo/Logo.png', // Replace with your logo image path
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
                      // decoration: BoxDecoration(color: const Color(0xffeaf2f2)),
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
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 50,
                      // decoration: BoxDecoration(color: const Color(0xffeaf2f2)),
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
                          SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>const HomeScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff0070ac),
                          ),
                          child: const Text(
                            'Ingia',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                       const SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                        width: 120,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>const HomeScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff0070ac),
                          ),
                          child: const Text(
                            'Mgeni',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                       SizedBox(
                        width: 120,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>const Registration()));
                          },
                          style: ElevatedButton.styleFrom(
                           backgroundColor: const Color(0xff0070ac),
                            
                          ),
                          child: const Text(
                            'Jisajiri',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                        ],
                      ),
                      const SizedBox(height: 140,),
                      const Center(
                        child: Text("wito@2023.Copyright reserved ",style: TextStyle(color: Colors.white),),
                      )
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
