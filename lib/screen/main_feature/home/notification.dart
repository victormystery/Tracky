import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Notify extends StatefulWidget {
  const Notify({super.key});

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(top: 70, left: 15, right: 15),
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
                const SizedBox(width: 90),
                const Text(
                  "Notification",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      "Recent",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xfffd683d),
                      ),
                      child: const Text(
                        "4",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Clear all",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFFD683D),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsetsDirectional.all(12),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(221, 24, 23, 23)),
                          child: const Icon(
                            CommunityMaterialIcons.message_processing,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              "Kathryn sent you a message ",
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 5),
                            Text("Tap to see message")
                          ],
                        ),
                        Text(DateFormat.jm().format(DateTime.now()).toString()),
                      ],
                    ),
                  ),
                  const Divider(),
                  const SizedBox(height: 20),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsetsDirectional.all(12),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(221, 24, 23, 23)),
                          child: const Icon(
                            CommunityMaterialIcons.message_processing,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              "Your Order is Ready for Delivery",
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 5),
                            Text("Tap to see shipping details")
                          ],
                        ),
                        Text(DateFormat.jm().format(DateTime.now()).toString()),
                      ],
                    ),
                  ),
                  const Divider(),
                  const SizedBox(height: 20),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsetsDirectional.all(12),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(221, 24, 23, 23)),
                          child: const Icon(
                            CommunityMaterialIcons.message_processing,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              "Try out our Latest Service from Tracky",
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 5),
                            Text("Tap to see latest")
                          ],
                        ),
                        Text(DateFormat.jm().format(DateTime.now()).toString()),
                      ],
                    ),
                  ),
                  const Divider(),
                  const SizedBox(height: 20),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsetsDirectional.all(12),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(221, 24, 23, 23)),
                          child: const Icon(
                            CommunityMaterialIcons.message_processing,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              "Get 20% Discount for First Transaction",
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 5),
                            Text("Tap to see details")
                          ],
                        ),
                        Text(DateFormat.jm().format(DateTime.now()).toString()),
                      ],
                    ),
                  ),
                  const Divider(),
                  const SizedBox(height: 20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
