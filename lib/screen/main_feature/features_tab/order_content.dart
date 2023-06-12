// ignore_for_file: use_full_hex_values_for_flutter_colors, unused_local_variable

import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrderContent extends StatefulWidget {
  const OrderContent({super.key});

  @override
  State<OrderContent> createState() => _OrderContentState();
}

class _OrderContentState extends State<OrderContent> {
  bool checked = true;

  @override
  Widget build(BuildContext context) {
    var inputDecoration = const InputDecoration();
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                const SizedBox(width: 70),
                const Text(
                  "Order Detail",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                  child: Text(
                    "Package Type",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 20, 5),
                  child: Text(
                    "Weight",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            FittedBox(
              child: Row(
                children: [
                  Container(
                    width: 227,
                    height: 52,
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.black26),
                        ),
                        hintText: "Enter Package Type",
                        prefixIcon: const Icon(
                            CommunityMaterialIcons.package_variant_closed),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Container(
                    width: 100,
                    height: 52,
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "0",
                        suffixText: "Kg",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.black26),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Services",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
                InkWell(
                  onTap: () async {
                    return showModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                        padding: const EdgeInsets.fromLTRB(30, 20, 10, 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Service",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(height: 15),
                            Container(
                              width: 327,
                              height: 70,
                              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: const Icon(
                                          CommunityMaterialIcons
                                              .package_variant_closed,
                                          color: Color(0xfffd683d),
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("Regular"),
                                          SizedBox(height: 5),
                                          Text("5-7 days"),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Text("\$${15}")
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 327,
                              height: 70,
                              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: const Icon(
                                          CommunityMaterialIcons
                                              .package_variant_closed,
                                          color: Color(0xfffd683d),
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("Cargo"),
                                          SizedBox(height: 5),
                                          Text("3-4 days"),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Text("\$${30}")
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 327,
                              height: 70,
                              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: const Icon(
                                          CommunityMaterialIcons
                                              .package_variant_closed,
                                          color: Color(0xfffd683d),
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("Exprees"),
                                          SizedBox(height: 5),
                                          Text("1-2 days"),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Text("\$${50}")
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: 327,
                    height: 52,
                    padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Iconsax.note_1),
                            SizedBox(width: 10),
                            Text("Select Services"),
                          ],
                        ),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 310),
            InkWell(
              onTap: () async {
                return await showModalBottomSheet(
                  context: context,
                  builder: (context) => StatefulBuilder(
                    builder: (context, setState) => Container(
                      padding: const EdgeInsets.fromLTRB(30, 20, 10, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Payment Method"),
                          const SizedBox(height: 10),
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
                                const Row(
                                  children: [
                                    Icon(Iconsax.coin),
                                    SizedBox(width: 15),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Tracky Balance"),
                                        SizedBox(height: 5),
                                        Text("\$${4567}"),
                                      ],
                                    ),
                                  ],
                                ),
                                InkWell(
                                    onTap: () {
                                      setState(() => checked = !checked);
                                    },
                                    child: checked == true
                                        ? const Icon(Icons.radio_button_checked)
                                        : const Icon(Icons.radio_button_off))
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Mastercard"),
                                        SizedBox(height: 5),
                                        Text("6789 0987 1234 **** "),
                                      ],
                                    ),
                                  ],
                                ),
                                InkWell(
                                    onTap: () async {
                                      setState(() => checked = !checked);
                                    },
                                    child: checked == false
                                        ? const Icon(Icons.radio_button_checked)
                                        : const Icon(Icons.radio_button_off))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: Container(
                width: 327,
                height: 52,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xffff86a40)),
                child: const Center(
                  child: Text(
                    "Pay Now",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
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
