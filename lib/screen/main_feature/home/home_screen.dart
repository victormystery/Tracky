import 'package:catchy/screen/main_feature/home/service.dart';
import 'package:catchy/screen/main_feature/home/track_order.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

import 'features.dart';
import 'notification.dart';
import 'top_up/top_up_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(15, 60, 15, 20),
              color: const Color(0xfff1d272f),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "images/logo catchy.png",
                                  scale: 5,
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  'Catchy',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const Notify();
                                  },
                                ));
                              },
                              child: Container(
                                padding: const EdgeInsetsDirectional.all(7),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1.2,
                                    style: BorderStyle.solid,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.notifications_none,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.fromLTRB(14, 14, 12, 13),
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
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
                                child: Container(
                                  child: Row(
                                    children: [
                                      const Text(
                                        "Top-Up",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(width: 7),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: const Color(0xfff1d272f),
                                            borderRadius:
                                                BorderRadius.circular(7)),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const TrackOrder();
                              },
                            ));
                          },
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(14, 14, 14, 12),
                            width: 327,
                            height: 52,
                            decoration: BoxDecoration(
                              color: const Color(0xfffd683d),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Opacity(
                                  opacity: 0.7,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 123, 0),
                                    height: double.infinity,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                0, 0, 14, 1),
                                            width: 24,
                                            height: 24,
                                            child: const Icon(Icons.search)),
                                        const Text(
                                          'Track Order',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(30, 0, 10, 0),
                                    width: 10,
                                    child: const Icon(
                                        CommunityMaterialIcons.qrcode_scan)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Features(),
            const SizedBox(height: 20),
            const ServicesScreens()
          ],
        ),
      ),
    );
  }
}
