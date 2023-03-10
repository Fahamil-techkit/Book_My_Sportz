import 'package:flutter/material.dart';

class ParentInformationScreen extends StatefulWidget {
  const ParentInformationScreen({super.key});

  @override
  _ParentInformationScreenState createState() =>
      _ParentInformationScreenState();
}

class _ParentInformationScreenState extends State<ParentInformationScreen> {
  @override
  Widget build(BuildContext context) {
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
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 12, right: 10, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Parents Information',
                style: TextStyle(fontSize: 24.0, color: Colors.purple),
              ),
              const SizedBox(height: 40.0),
              const Container1(containertitel: "Father's Details"),
              const SizedBox(
                height: 20,
              ),
              const Container1(
                containertitel: "Mother's Details",
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Optional"),
              const SizedBox(
                height: 12,
              ),
              const Container1(containertitel: "Gurdian's Details"),
              SizedBox(
                height: size.height / 3,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: 350,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Continue"),
                        )),
                  )
                ],
              )
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
        color: const Color.fromRGBO(143, 141, 159, 100),
      ),
      child: ExpansionTile(
        // backgroundColor: Colors.black,
        title: Text(
          containertitel,
          style: const TextStyle(color: Colors.white),
        ),
        children: const [
          Textform1(
            inttext1: "Name",
          ),
          SizedBox(
            height: 12,
          ),
          Textform1(
            inttext1: " Aadhar NO.",
          ),
          SizedBox(
            height: 12,
          ),
          Textform1(
            inttext1: "Phone NO",
          ),
          SizedBox(
            height: 12,
          ),
          Textform1(
            inttext1: "Email",
          ),
          SizedBox(
            height: 12,
          ),
          Textform1(
            inttext1: "Address",
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
  final String inttext1;
  const Textform1({
    super.key,
    required this.inttext1,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        hintText: inttext1,
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
