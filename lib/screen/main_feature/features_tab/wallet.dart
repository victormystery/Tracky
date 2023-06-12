// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import '../home/top_up/top_up_page.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
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
                    "Wallet",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.fromLTRB(14, 14, 12, 13),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
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
                            color: Color(0xffffffff),
                            letterSpacing: 1.3,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const TopupPage();
                          },
                        ));
                      },
                      child:  Row(
                          children: [
                            const Text(
                              "Top-Up",
                              style: TextStyle(
                                color: Color(0xffffffff),
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(width: 7),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(7)),
                              child: const Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 1, 10, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Payment Method",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.add,
                        color: Color(0xfffd683d),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 327,
                height: 70,
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("images/Mastercard Icon.png"),
                        const SizedBox(width: 15),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Mastercard"),
                            SizedBox(height: 5),
                            Text("6789 0987 1234 **** "),
                          ],
                        ),
                      ],
                    ),
                    InkWell(
                        onTap: () {
                          setState(() {
                            checked = !checked;
                          });
                        },
                        child: checked == true
                            ? const Icon(Icons.radio_button_checked)
                            : const Icon(Icons.radio_button_off))
                  ],
                ),
              ),
              Container(
                width: 327,
                height: 70,
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("images/Mastercard Icon.png"),
                        const SizedBox(width: 15),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Mastercard"),
                            SizedBox(height: 5),
                            Text("6789 0987 1234 **** "),
                          ],
                        ),
                      ],
                    ),
                    InkWell(
                        onTap: () {
                          setState(() {
                            checked = !checked;
                          });
                        },
                        child: checked == false
                            ? const Icon(Icons.radio_button_checked)
                            : const Icon(Icons.radio_button_off))
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Transaction History"),
                  const SizedBox(height: 15),
                  Container(
                    width: 327,
                    height: 70,
                    padding: const EdgeInsets.fromLTRB(10, 1, 10, 1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                CommunityMaterialIcons.package_variant_closed,
                                color: Color(0xfffd683d),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Drop Off Payment"),
                                Text(DateFormat.yMEd()
                                    .format(DateTime.now())
                                    .toString()),
                              ],
                            ),
                          ],
                        ),
                        const Text("\$${25.5}")
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 327,
                    height: 70,
                    padding: const EdgeInsets.fromLTRB(10, 1, 10, 1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                CommunityMaterialIcons.truck_delivery,
                                color: Color(0xfffd683d),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Cargo Shipping"),
                                Text(DateFormat.yMEd()
                                    .format(DateTime.now())
                                    .toString()),
                              ],
                            ),
                          ],
                        ),
                        const Text("\$${25.5}")
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 327,
                    height: 70,
                    padding: const EdgeInsets.fromLTRB(10, 1, 10, 1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                CommunityMaterialIcons.truck_fast,
                                color: Color(0xfffd683d),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Express Shipping"),
                                Text(DateFormat.yMEd()
                                    .format(DateTime.now())
                                    .toString()),
                              ],
                            ),
                          ],
                        ),
                        const Text("\$${25.5}")
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 327,
                    height: 70,
                    padding: const EdgeInsets.fromLTRB(10, 1, 10, 1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                CommunityMaterialIcons.package_variant_closed,
                                color: Color(0xfffd683d),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Pick Up Payment"),
                                Text(DateFormat.yMEd()
                                    .format(DateTime.now())
                                    .toString()),
                              ],
                            ),
                          ],
                        ),
                        const Text("\$${25.5}")
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
