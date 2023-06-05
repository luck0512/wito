import 'package:flutter/material.dart';
import 'package:wito_app/pages/sing_in.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:wito/components/text_field.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:random_string/random_string.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:wito/components/my_button.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {

  int? _selectedRadio; // Changed from int _selectedRadio = 0; to int? _selectedRadio;

  void _handleRadioValueChange(int? value) { // Updated the parameter type to int?
    setState(() {
      _selectedRadio = value;
    });
  }

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
  TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
      
                  const SizedBox(height: 5.0),
                  const Text('Tafadhali jaza taarifa zako',style: TextStyle(color: Colors.white),),
                  const SizedBox(height: 5.0),
                  SizedBox(
                    height: 50,
                    // decoration: BoxDecoration(color: const Color(0xffeaf2f2)),
                    child: TextFormField(
                      controller: _firstNameController,
                      decoration: InputDecoration(
                        fillColor:const Color(0xffeaf2f2),
                        filled: true,
                        prefixIcon: const Icon(Icons.person),
                        labelText: 'Jina la kwanza',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        final namePattern = RegExp(r'^[a-zA-Z ]+$');
                        if (!namePattern.hasMatch(value)) {
                          return 'Only letters are allowed';
                        }
                        return null;
                      },
                    ),
                  ),
      
                  const SizedBox(height:5.0),
                  SizedBox(
                    height: 50,
                    // decoration: BoxDecoration(color: const Color(0xffeaf2f2)),
                    child: TextFormField(
                      controller: _lastNameController,
                      decoration: InputDecoration(
                         fillColor:const Color(0xffeaf2f2),
                        filled: true,
                        prefixIcon: const Icon(Icons.person),
                        labelText: 'Jina la mwisho',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        final namePattern = RegExp(r'^[a-zA-Z ]+$');
                        if (!namePattern.hasMatch(value)) {
                          return 'Only letters are allowed';
                        }
                        return null;
                      },
                    ),
                  ),
      
                  const SizedBox(height:5.0),
                  SizedBox(
                    height: 50,
                    // decoration: BoxDecoration(color: const Color(0xffeaf2f2)),
                    child: TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                         fillColor:const Color(0xffeaf2f2),
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
                  const SizedBox(height:5,),
                   Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding:EdgeInsets.all(0),
                          child: Text(
                            'Aina ya akaunti',
                            style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                          ),
                        ),
                        RadioListTile(
                          title: const Text('Binafsi',style: TextStyle(color: Colors.white),),
                          value: 0,
                          
                          activeColor: const Color(0xFFFFFFFF),
                          groupValue: _selectedRadio,
                          onChanged: _handleRadioValueChange,
                        ),
                        RadioListTile(
                          title: const Text('Taasisi',style: TextStyle(color: Colors.white),),
                          value: 1,
                          groupValue: _selectedRadio,
                          onChanged: _handleRadioValueChange,
                        ),
                      ],
                    ),
                  const SizedBox(height:5.0),
                  SizedBox(
                    height: 50,
                    // decoration:  BoxDecoration(color: const Color(0xffeaf2f2)),
                    child: TextFormField(
                      controller: _phoneNumberController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                         fillColor:const Color(0xffeaf2f2),
                        filled: true,
                        prefixIcon: const Icon(Icons.phone),
                        labelText: 'Namba ya Simu',
                        hintText: "255 _ _ _",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your phone number';
                        }
                        if (!RegExp(r'^255\d{9}$').hasMatch(value)) {
                          return 'Enter valid Phone number';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 50,
                    // decoration: BoxDecoration(color: const Color(0xffeaf2f2)),
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                         fillColor:const Color(0xffeaf2f2),
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
                  const SizedBox(height:5.0),
                  SizedBox(
                    height: 50,
                    // decoration: BoxDecoration(color: const Color(0xffeaf2f2)),
                    child: TextFormField(
                      controller: _confirmPasswordController,
                      obscureText: true,
                      decoration: InputDecoration(
                         fillColor:const Color(0xffeaf2f2),
                        filled: true,
                        prefixIcon: const Icon(Icons.lock),
                        labelText: 'Rudia nenosiri',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please confirm your password';
                        }
                        if (value != _passwordController.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height:5.0),
      
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff0070ac),
                      ),
                      child: const Text(
                        'Jisajili',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                      const SizedBox(height: 3,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>const SignIn()));
                        },
                        child: const Text('Je, una akaunti? INGIA',style: TextStyle(color: Colors.white),),
                      )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

