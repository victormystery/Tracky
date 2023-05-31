import 'package:flutter/material.dart';

import '../../widget/widget.dart';

class LoginScreen extends StatefulWidget {
  Function? toggleView;
  LoginScreen({this.toggleView, super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 70, left: 15, right: 15),
          child: Container(
            width: double.infinity,
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
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
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
                        child: SizedBox(
                          width: 163,
                          height: 42,
                          child: InkWell(
                            onTap: () {
                              widget.toggleView!();
                            },
                            child: const Center(
                              child: Text(
                                'Sign Up',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Positioned(
                        left: 163,
                        top: 4,
                        child: Container(
                          width: 167,
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
                              'Sign In',
                              textAlign: TextAlign.center,
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
                          keyboardType: TextInputType.phone,
                          decoration: textInputDecoration.copyWith(
                              hintText: "Enter Your Phone Number",
                              prefixIcon: const Icon(Icons.phone)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: textInputDecoration.copyWith(
                              hintText: "Enter Your Password ",
                              prefixIcon: const Icon(Icons.lock)),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    // buttonSeG (1:4108)
                    margin: const EdgeInsets.fromLTRB(0, 0, 9.5, 40),
                    width: double.infinity,
                    height: 56,
                    decoration: BoxDecoration(
                      color: const Color(0xfffd683d),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: Text(
                        'Sign In',
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
                        color: Color.fromARGB(98, 167, 169, 183),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
