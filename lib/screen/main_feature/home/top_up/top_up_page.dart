// ignore_for_file: prefer_const_constructors, use_full_hex_values_for_flutter_colors

import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

class TopupPage extends StatefulWidget {
  const TopupPage({super.key});

  @override
  State<TopupPage> createState() => _TopupPageState();
}

class _TopupPageState extends State<TopupPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    padding: const EdgeInsetsDirectional.all(8),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: const Icon(Icons.arrow_back_sharp),
                  ),
                ),
                const SizedBox(width: 90),
                const Text(
                  "Top Up",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.fromLTRB(14, 14, 12, 13),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Balance",
                        style: TextStyle(
                          color: Color(0xfffa7a9b7),
                        ),
                      ),
                      SizedBox(height: 18),
                      Text(
                        "\$3,245.00",
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.3,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Top up Balance",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Choose a payment method to continue",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.maxFinite,
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    fillColor: Colors.grey[250],
                    filled: true,
                    prefixIcon: const Icon(
                      CommunityMaterialIcons.currency_ngn,
                      size: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            const BorderSide(color: Colors.transparent)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            const BorderSide(color: Colors.transparent)),
                    hintText: "Select amount to Topup"),
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.maxFinite,
              child: InkWell(
                onTap: () async {
                  return showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Payment Method",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 30),
                            Container(
                              margin: EdgeInsets.only(left: 15, right: 10),
                              width: 327,
                              height: 46,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.black12)),
                              child: InkWell(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.add_circle_rounded,
                                      color: Color(0xFFFD683D),
                                    ),
                                    SizedBox(width: 10),
                                    Text("Add New Payment Method"),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.only(top: 50, bottom: 20),
                                width: double.infinity,
                                padding:
                                    const EdgeInsets.fromLTRB(0, 15, 0, 15),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: const Color(0xFFFD683D)),
                                child: const Text(
                                  "Confirm Payment",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 52,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Select Payment Method"),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27, right: 27, top: 140),
              child: InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(top: 140, bottom: 20),
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFFFD683D)),
                  child: const Text(
                    "Continue",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
