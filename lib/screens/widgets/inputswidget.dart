import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  const TextInputWidget(
     {super.key, 
    required this.textEditingController,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 40,
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0xDD504F4F)),
          prefixIcon: const Icon(
            Icons.account_circle,
            color: Color(0xDD504F4F),
          ),
          fillColor: const Color(0xFFE6E6E6),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          hoverColor: const Color(0xFFE6E6E6),
          filled: true,
        ),
      ),
    );
  }
}
