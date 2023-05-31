import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../widget/widget.dart';
import 'otp.dart';

class Register extends StatefulWidget {
  final Function? toggleView;
  const Register({this.toggleView, super.key});

  static String verify = "";

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey _formKey = GlobalKey();
  var phone = "";
  TextEditingController countrycode = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

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
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: const Text(
                    'Shipping and Track Anytime ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  child: const Text(
                    'Get great experience with tracky',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  // tabbarctk (1:4128)
                  margin: const EdgeInsets.fromLTRB(4.9, 0, 8.5, 55),
                  width: 332,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xfff8f9fb),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 4,
                        top: 4,
                        child: Container(
                          width: 163,
                          height: 42,
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x26a7a9b7),
                                offset: Offset(0, 4),
                                blurRadius: 20,
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              'Sign Up',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Positioned(
                        left: 167,
                        top: 4,
                        child: SizedBox(
                          width: 167,
                          height: 42,
                          child: InkWell(
                            onTap: () {
                              widget.toggleView!();
                            },
                            child: const Center(
                              child: Text(
                                'Sign In',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.name,
                          controller: nameController,
                          decoration: textInputDecoration.copyWith(
                              hintText: "Enter your Full Name",
                              prefixIcon: const Icon(Icons.person)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.name,
                          controller: passController,
                          obscureText: true,
                          decoration: textInputDecoration.copyWith(
                              hintText: "Enter Your Password ",
                              prefixIcon: const Icon(Icons.lock)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 55,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                width: 40,
                                child: TextField(
                                  controller: countrycode,
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Text(
                                "|",
                                style:
                                    TextStyle(fontSize: 33, color: Colors.grey),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: TextField(
                                onChanged: (value) {
                                  phone = value;
                                },
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
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
                  height: 20,
                ),
                InkWell(
                  onTap: () async {
                    await FirebaseAuth.instance.verifyPhoneNumber(
                      phoneNumber: '${countrycode.text + phone}',
                      verificationCompleted:
                          (PhoneAuthCredential credential) {},
                      verificationFailed: (FirebaseAuthException e) {},
                      codeSent: (String verificationId, int? resendToken) {
                        Register.verify = verificationId;
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return OtpScreen();
                          },
                        ));
                      },
                      codeAutoRetrievalTimeout: (String verificationId) {},
                    );
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
                Container(
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
                        Container(
                          child: Image.asset("images/Google Icon.png"),
                        ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
