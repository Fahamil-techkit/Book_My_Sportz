import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  String _selectedGender = 'Male';
  List<String> _genderOptions = ['Male', 'Female', 'Other'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Select your gender:'),
          Wrap(
            spacing: 8.0,
            children: _genderOptions.map((gender) {
              return ChoiceChip(
                label: Text(gender),
                selected: _selectedGender == gender,
                onSelected: (selected) {
                  setState(() {
                    _selectedGender = gender;
                  });
                },
                backgroundColor: gender == 'Male'
                    ? Colors.blue
                    : gender == 'Female'
                        ? Colors.pink
                        : Colors.grey,
                selectedColor: gender == 'Male'
                    ? Colors.blueAccent
                    : gender == 'Female'
                        ? Colors.pinkAccent
                        : Colors.grey[400],
                labelStyle: const TextStyle(
                  color: Colors.white,
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 16.0),
          Text('Selected gender: $_selectedGender'),
        ],
      ),
    );
  }
}
