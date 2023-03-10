import 'package:flutter/material.dart';

class ParentInformationScreen extends StatefulWidget {
  @override
  _ParentInformationScreenState createState() =>
      _ParentInformationScreenState();
}

class _ParentInformationScreenState extends State<ParentInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_sharp,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, right: 10, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Parents Information',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              SizedBox(height: 40.0),
              Container1(containertitel: "Father's Details"),
              SizedBox(
                height: 20,
              ),
              Container1(
                containertitel: "Mother's Details",
              ),
              SizedBox(
                height: 20,
              ),
              Text("Optional"),
              SizedBox(
                height: 12,
              ),
              Container1(containertitel: "Gurdian's Details")
            ],
          ),
        ),
      ),
    );
  }
}

class Container1 extends StatelessWidget {
  final String containertitel;
  const Container1({
    super.key,
    required this.containertitel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.grey.shade800,
      ),
      child: ExpansionTile(
        title: Text(
          containertitel,
          style: const TextStyle(color: Colors.white),
        ),
        children: const [
          Textform1(
            Inttext1: "Name",
          ),
          SizedBox(
            height: 12,
          ),
          Textform1(
            Inttext1: " Aadhar NO.",
          ),
          SizedBox(
            height: 12,
          ),
          Textform1(
            Inttext1: "Phone NO",
          ),
          SizedBox(
            height: 12,
          ),
          Textform1(
            Inttext1: "Email",
          ),
          SizedBox(
            height: 12,
          ),
          Textform1(
            Inttext1: "Address",
          ),
          SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}

class Textform1 extends StatelessWidget {
  final String Inttext1;
  const Textform1({
    super.key,
    required this.Inttext1,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        hintText: Inttext1,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
