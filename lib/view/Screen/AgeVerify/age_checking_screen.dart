import 'package:book_my_sporz/view/Screen/Personal%20Information.dart';
import 'package:flutter/material.dart';

import '../../Const/AppConstrants.dart';

class AgeCheckingScreen extends StatefulWidget {
  const AgeCheckingScreen({super.key});

  @override
  State<AgeCheckingScreen> createState() => _AgeCheckingScreenState();
}

class _AgeCheckingScreenState extends State<AgeCheckingScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Material(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
                child: Text(
              "I am a",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  color: ColorConstrants.base),
            )),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const BelowAgeScreen()));
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: size.width,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple.shade900),
                child: const Center(
                  child: Text(
                    "Below 16",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const BelowAgeScreen()));
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: size.width,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple.shade900),
                child: const Center(
                  child: Text(
                    "Above 16",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(20),
                width: size.width,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple.shade900),
                child: const Center(
                  child: Text(
                    "Coaches/ supporting Staff",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(20),
                width: size.width,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple.shade900),
                child: const Center(
                  child: Text(
                    "Club/ Event organizer/School",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
