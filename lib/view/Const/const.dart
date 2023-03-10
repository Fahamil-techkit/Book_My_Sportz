import 'package:flutter/material.dart';

class AppConstrants {
  static const String APPNAME = "Book My Sportz";
}

class ImageConstrants {
  static const String SPLASH = "asset/images/sport_image.png";
}

const size20 = SizedBox(
  height: 20,
);

// import 'package:flutter/material.dart';

// class PersonalInformation extends StatefulWidget {
//   const PersonalInformation({super.key});

//   @override
//   State<PersonalInformation> createState() => _PersonalInformationState();
// }

// class _PersonalInformationState extends State<PersonalInformation> {
  
//   DateTime selectedDate = DateTime.now();

//   List<String> moths = [
//     "Jan",
//     "Feb",
//     "Mar",
//     "Apr",
//     "May",
//     "Jun",
//     "Jul",
//     "Aug",
//     "Sep",
//     "Oct",
//     "Nov",
//     "Dec"
//   ];

//   Future<void> _selectedDate(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//         context: context,
//         initialDate: selectedDate,
//         firstDate: DateTime(2023, 1),
//         lastDate: DateTime(2100, 12));

//     if (picked != null && picked != selectedDate) {
//       setState(() {
//         selectedDate = picked;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.only(right: 30),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             SizedBox(
//               height: size.height / 8,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: const [
//                 Text(
//                   'Personal Information',
//                   style: TextStyle(fontSize: 22),
//                 )
//               ],
//             ),
//             Column(
//               children: [
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(5.0),
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       hintText: 'Name',
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(5.0),
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       hintText: 'Date/Month/year',
//                     ),
//                   ),
//                 ),
//                 TextButton(
//                   onPressed: () {
//                     _selectedDate(context);
//                   },
//                   style: ButtonStyle(
//                     padding: MaterialStateProperty.all(EdgeInsets.zero),
//                   ),
//                   child: Row(
//                     children: [
//                       const Icon(Icons.date_range),
//                       const SizedBox(
//                         width: 11,
//                       ),
//                       Text(
//                           "${selectedDate.day}  ${moths[selectedDate.month - 1]}"),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   height: 200, // reduce the height of the container
//                   padding: const EdgeInsets.all(10.0),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10.0),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.5),
//                         spreadRadius: 2,
//                         blurRadius: 5,
//                         offset: const Offset(0, 3), // changes position of shadow
//                       ),
//                     ],
//                   ),
//                   child: Column(
//                     children: const [
//                       TextField(
//                         decoration: InputDecoration(
//                           hintText: 'Field 1',
//                         ),
//                       ),
//                       SizedBox(height: 10.0),
//                       TextField(
//                         decoration: InputDecoration(
//                           hintText: 'Field 2',
//                         ),
//                       ),
//                       SizedBox(height: 10.0),
//                       TextField(
//                         decoration: InputDecoration(
//                           hintText: 'Field 3',
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


