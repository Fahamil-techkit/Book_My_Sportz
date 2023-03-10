import 'package:book_my_sporz/view/Const/appconstrants.dart';
import 'package:flutter/material.dart';

import '../parent_section/parent_section.dart';

class AgeVerify extends StatefulWidget {
  const AgeVerify({Key? key}) : super(key: key);

  @override
  State<AgeVerify> createState() => _AgeVerifyState();
}

class _AgeVerifyState extends State<AgeVerify> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Material(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: Column(
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
                      builder: (context) => ParentInformationScreen()));
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
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class ParentInformationScreen extends StatefulWidget {
//   @override
//   _ParentInformationScreenState createState() =>
//       _ParentInformationScreenState();
// }

// class _ParentInformationScreenState extends State<ParentInformationScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Parent Information'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ExpansionTile(
//           title: Text('Parent Information'),
//           children: [
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Full Name'),
//             ),
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Email'),
//             ),
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Phone Number'),
//             ),
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Address'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
