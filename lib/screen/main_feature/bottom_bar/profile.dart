// ignore_for_file: use_full_hex_values_for_flutter_colors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../widget/profile/edit.dart';

class Profile extends StatefulWidget {
  String username;
  String email;
  String phone;
  Profile(
      {required this.email,
      required this.phone,
      required this.username,
      super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 70, 20, 20),
              height: 219,
              width: double.infinity,
              color: const Color(0xfff1d272f),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "My Profile",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(radius: 30),
                          SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.username,
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(height: 5),
                              Text(
                                widget.phone,
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const EditProfile();
                            },
                          ));
                        },
                        child: Container(
                          width: 100,
                          height: 34,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey),
                          child: const Center(
                            child: Text(
                              "Edit Profile",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        width: 327,
                        height: 46,
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.lock_outline,
                              color: Color(0xfffd683d),
                            ),
                            SizedBox(width: 20),
                            Text("Change Password"),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: 327,
                        height: 46,
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.notifications,
                              color: Color(0xfffd683d),
                            ),
                            SizedBox(width: 20),
                            Text("Notification"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "About Us",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        width: 327,
                        height: 46,
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.lock_outline,
                              color: Color(0xfffd683d),
                            ),
                            SizedBox(width: 20),
                            Text("FAQ"),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: 327,
                        height: 46,
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Iconsax.security_safe,
                              color: Color(0xfffd683d),
                            ),
                            SizedBox(width: 20),
                            Text("Privacy Policy"),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: 327,
                        height: 46,
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.person_2,
                              color: Color(0xfffd683d),
                            ),
                            SizedBox(width: 20),
                            Text("Contact Us"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Other",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        width: 327,
                        height: 46,
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.share_sharp,
                              color: Color(0xfffd683d),
                            ),
                            SizedBox(width: 20),
                            Text("Share"),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: 327,
                        height: 46,
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.system_update_sharp,
                              color: Color(0xfffd683d),
                            ),
                            SizedBox(width: 20),
                            Text("Get Latest Version"),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15)
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
