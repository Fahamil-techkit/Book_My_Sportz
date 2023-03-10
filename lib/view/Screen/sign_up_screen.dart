import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'AgeVerify/age_checking_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              SizedBox(
                height: size.height / 6,
              ),
              const Icon(
                Icons.airplane_ticket_outlined,
                size: 50,
              ),
              Flexible(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                      "Now Save Money on Your Sports Tickets with free discount coupons",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black54)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: size.width,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 0.9, color: Colors.black)),
                  child: ListTile(
                    onTap: () {},
                    leading: const Icon(
                      EvaIcons.google,
                      size: 30,
                    ),
                    title: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Continue with Google"),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: size.width,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 0.9, color: Colors.black)),
                  child: ListTile(
                    onTap: () {},
                    leading: const Icon(
                      EvaIcons.email,
                      size: 30,
                    ),
                    title: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Continue with Mail"),
                    ),
                  ),
                ),
              ),
              const Center(
                child: Text("OR"),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {},
                  onInputValidated: (bool value) {
                    print(value);
                  },
                  selectorConfig: const SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  ),
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: const TextStyle(color: Colors.black),
                  initialValue: number,
                  textFieldController: controller,
                  formatInput: true,
                  keyboardType: const TextInputType.numberWithOptions(
                      signed: true, decimal: true),
                  inputBorder: const OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: size.height / 5,
              ),
              Padding(
                padding: const EdgeInsets.all(23),
                child: Container(
                  alignment: Alignment.center,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AgeCheckingScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple.shade900,
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "Create an Account",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
