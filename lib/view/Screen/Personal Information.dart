

import 'package:book_my_sporz/view/Screen/parent_section/parent_section.dart';
import 'package:flutter/material.dart';

class BelowAgeScreen extends StatefulWidget {
  const BelowAgeScreen({super.key});

  @override
  State<BelowAgeScreen> createState() => _BelowAgeScreenState();
}

class _BelowAgeScreenState extends State<BelowAgeScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    String male = "Male";
    String female = "Female";
    String other = "Other";
    DateTime selectedDate = DateTime.now();
    // List<String> moths = [
    //   "Jan",
    //   "Feb",
    //   "Mar",
    //   "Apr",
    //   "May",
    //   "Jun",
    //   "Jul",
    //   "Aug",
    //   "Sep",
    //   "Oct",
    //   "Nov",
    //   "Dec"
    // ];
    Future<void> _selectedDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime(2023, 1),
          lastDate: DateTime(2100, 12));

      if (picked != null && picked != selectedDate) {
        setState(() {
          selectedDate = picked;
        });
      }
    }

    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 21,
              ),
              child: Container(
                alignment: AlignmentDirectional.bottomStart,
                child: const Text(
                  "Personal Information",
                  style: TextStyle(fontSize: 25, color: Colors.purple),
                ),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Name",
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.purple),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.purple),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Day / Month / Year",
                  suffixIcon: IconButton(
                    mouseCursor: MouseCursor.defer,
                    onPressed: () {
                      _selectedDate(context);
                    },
                    icon: const Icon(Icons.date_range),
                    color: Colors.black,
                  ),
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.purple),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.purple),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 22,
                ),
                Text(
                  "Gender",
                  style: TextStyle(fontSize: 21),
                )
              ],
            ),
            //gender choice
            Row(
              children: [
                const Icon(Icons.description),
                const SizedBox(
                  width: 11,
                ),
                ChoiceChip(
                  label: Text(
                    "Male",
                    style: TextStyle(
                      fontSize: 18,
                      color: male == "Male" ? Colors.black : Colors.white,
                    ),
                  ),
                  selected: male == "Male" ? true : false,
                  selectedColor: Colors.white70,
                  selectedShadowColor: Colors.black,
                  onSelected: (value) {
                    if (value) {
                      setState(() {
                        male = "Income";
                      });
                    }
                  },
                ),
                const SizedBox(
                  width: 55,
                ),
                ChoiceChip(
                  label: Text(
                    "Female",
                    style: TextStyle(
                      fontSize: 18,
                      color: female == "Female" ? Colors.black : Colors.white,
                    ),
                  ),
                  selected: female == "Female" ? true : false,
                  selectedColor: Colors.white70,
                  onSelected: (value) {
                    if (value) {
                      setState(() {
                        female = "Female";
                      });
                    }
                  },
                ),
                SizedBox(
                  width: size.width / 7,
                ),
                ChoiceChip(
                  label: Text(
                    "Other",
                    style: TextStyle(
                      fontSize: 18,
                      color: other == "Other" ? Colors.black : Colors.white,
                    ),
                  ),
                  selected: female == "Other" ? true : false,
                  selectedColor: Colors.white70,
                  onSelected: (value) {
                    if (value) {
                      setState(() {
                        other = "Other";
                      });
                    }
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Textform1(inttext1: "Aadhaar NO."),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      decoration:
                          const InputDecoration(hintText: 'School Name'),
                    ),
                    TextFormField(
                      decoration:
                          const InputDecoration(hintText: 'School Addess'),
                    ),
                    TextFormField(
                      decoration:
                          const InputDecoration(hintText: 'Study Period'),
                    ),
                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Add Another School '),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ParentInformationScreen(),
                      ),
                    );
                  },
                  child: const Text("Continue"),
                ))
          ],
        ),
      ),
    );
  }
}
