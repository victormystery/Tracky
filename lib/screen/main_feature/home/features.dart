import 'package:catchy/screen/main_feature/features_tab/check_rate.dart';
import 'package:catchy/screen/main_feature/features_tab/help_center.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

import '../features_tab/nearby_drop.dart';
import '../features_tab/order_content.dart';
import '../features_tab/wallet.dart';

class Features extends StatefulWidget {
  const Features({super.key});

  @override
  State<Features> createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 1, 15, 3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Features",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20),
          FittedBox(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const CheckRate();
                          },
                        ));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.black12)),
                        child: const Column(
                          children: [
                            Icon(
                              CommunityMaterialIcons.currency_usd_circle,
                              color: Color(0xfffd683d),
                            ),
                            Text("Check Rates")
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const NearDrop();
                          },
                        ));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.black12)),
                        child: const Column(
                          children: [
                            Icon(
                              CommunityMaterialIcons.map,
                              color: Color(0xfffd683d),
                            ),
                            Text("Nearby Drop")
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const OrderContent();
                          },
                        ));
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 10, left: 30, right: 30, bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black12),
                        ),
                        child: const Column(
                          children: [
                            Icon(
                              CommunityMaterialIcons.package_variant_closed,
                              color: Color(0xfffd683d),
                            ),
                            Text("Order")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const HelpCenter();
                            },
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                color: const Color.fromARGB(31, 15, 9, 9))),
                        child: const Column(
                          children: [
                            Icon(
                              Icons.help_outline_sharp,
                              color: Color(0xfffd683d),
                            ),
                            Text("Help Center")
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const Wallet();
                            },
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 10, left: 30, right: 30, bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.black12)),
                        child: const Column(
                          children: [
                            Icon(
                              CommunityMaterialIcons.wallet,
                              color: Color(0xfffd683d),
                            ),
                            Text("Wallet")
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 10, left: 30, right: 30, bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black12)),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.category,
                            color: Color(0xfffd683d),
                          ),
                          Text("Others")
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
