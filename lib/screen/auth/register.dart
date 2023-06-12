import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../helper/services/database_service.dart';
import '../../widget/widget.dart';
import 'otp.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  static String verify = "";

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  // ignore: unused_field
  bool _isLoading = false;
  var phone = "";
  TextEditingController countrycode = TextEditingController();
  String username = "";
  String password = "";
  String email = "";
  // TextEditingController nameController = TextEditingController();
  // TextEditingController passController = TextEditingController();

  @override
  void initState() {
    countrycode.text = "+234";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 70, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Shipping and Track Anytime ',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Get great experience with tracky',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 40),
              // Container(
              //   width: 163,
              //   height: 42,
              //   decoration: BoxDecoration(
              //     color: const Color(0xffffffff),
              //     borderRadius: BorderRadius.circular(50),
              //     boxShadow: const [
              //       BoxShadow(
              //         color: Color(0x26a7a9b7),
              //         offset: Offset(0, 4),
              //         blurRadius: 20,
              //       ),
              //     ],
              //   ),
              //   child: const Center(
              //     child: Text(
              //       'Sign Up',
              //       textAlign: TextAlign.center,
              //     ),
              //   ),
              // ),
              SizedBox(
                width: double.infinity,
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.name,
                        onChanged: (value) {
                          setState(() {
                            username = value;
                          });
                        },
                        validator: (value) {
                          if (value!.isNotEmpty) {
                            return null;
                          }
                          return "Enter a username";
                        },
                        decoration: textInputDecoration.copyWith(
                            hintText: "Enter your Full Name",
                            prefixIcon: const Icon(Icons.person)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) {
                          setState(() {
                            email = value;
                          });
                        },
                        validator: (value) {
                          if (value!.isEmpty || !value.contains('@')) {
                            return 'Please enter a valid email address.';
                          }
                          return null;
                        },
                        decoration: textInputDecoration.copyWith(
                            hintText: "Enter your Email",
                            prefixIcon: const Icon(Icons.email)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.blue),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              width: 40,
                              child: TextField(
                                controller: countrycode,
                                keyboardType: TextInputType.phone,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            const Text(
                              "|",
                              style:
                                  TextStyle(fontSize: 33, color: Colors.grey),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: TextField(
                              onChanged: (value) {
                                phone = value;
                              },
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Phone",
                              ),
                            ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () async {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      _isLoading = true;
                    });

                    await FirebaseAuth.instance.verifyPhoneNumber(
                      phoneNumber: countrycode.text + phone,
                      verificationCompleted:
                          (PhoneAuthCredential credential) {},
                      verificationFailed: (FirebaseAuthException e) {},
                      codeSent: (String verificationId, int? resendToken) {
                        Register.verify = verificationId;
                        DatabaseService(
                                uid: FirebaseAuth.instance.currentUser!.uid)
                            .saveUserData(phone, username, email);

                        nextScreen(context, OtpScreen(phone: phone));
                        // Navigator.push(context, MaterialPageRoute(
                        //   builder: (context) {
                        //     return OtpScreen(phone: phone);
                        //   },
                        // ));
                      },
                      codeAutoRetrievalTimeout: (String verificationId) {},
                    );
                  } else {
                    showSnackbar(context, Colors.red, 'error');
                    setState(() {
                      _isLoading = false;
                    });
                  }
                },
                child: Container(
                  margin: const EdgeInsets.fromLTRB(4.11, 0, 9.5, 40),
                  width: double.infinity,
                  height: 56,
                  decoration: BoxDecoration(
                    color: const Color(0xfffd683d),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text(
                      'Create Account',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Container(
                // line10strokeyZW (1:4121)
                margin: const EdgeInsets.fromLTRB(4.11, 0, 9.5, 15),
                width: double.infinity,
                height: 1,
                decoration: const BoxDecoration(
                  color: Color(0xfff3f3f3),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 6.39, 15),
                child: const Center(
                  child: Text(
                    'Or Sign Up With',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.fromLTRB(4.11, 0, 9.5, 36),
                  padding: const EdgeInsets.fromLTRB(68, 16, 74, 16),
                  width: double.infinity,
                  height: 56,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(99, 167, 169, 183),
                        offset: Offset(0, 4),
                        blurRadius: 45,
                      ),
                    ],
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("images/Google Icon.png"),
                        const SizedBox(width: 20),
                        const Text(
                          'Sign Up with Google',
                          style: TextStyle(fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                      ],
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

  signup() async {}
}
