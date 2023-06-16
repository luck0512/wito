import 'package:flutter/material.dart';
import '../../../themes/colors.dart';

class MiadiWidget extends StatefulWidget {
  const MiadiWidget({Key? key}) : super(key: key);

  @override
  _MiadiWidgetState createState() => _MiadiWidgetState();
}

class _MiadiWidgetState extends State<MiadiWidget> {
  DateTime? selectedDate;
  final _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime(2025),
    );

    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
        _dateController.text = pickedDate.toString();
      });
    }
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(
          Icons.sell,
          size: 48.0,
          color: Colors.greenAccent,
        ),
        const SizedBox(height: 16.0),
        const Text(
          ' molestie vel a urna.',
          style: TextStyle(
            fontSize: 10.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16.0),
        const TextField(
          decoration: InputDecoration(
            labelText: 'Weka Kiasi',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 6.0),
        const TextField(
          decoration: InputDecoration(
            labelText: 'Weka NenoSiri',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 16.0),
        const TextField(
          decoration: InputDecoration(
            labelText: 'Rudia NenoSiri',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 16.0),
        TextFormField(
          controller: _dateController,
          readOnly: true,
          onTap: () => _selectDate(context),
          decoration: InputDecoration(
            labelText: 'Select Date',
            border: OutlineInputBorder(),
          ),
        ),
        
        const SizedBox(height: 16.0),
        SizedBox(
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Styles.primaryColor,
            ),
            child: const Text('Kamilisha'),
          ),
        ),
      ],
    );
  }
}
