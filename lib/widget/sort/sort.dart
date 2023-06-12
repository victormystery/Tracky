// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';


class Sort extends StatefulWidget {
  const Sort({super.key});

  @override
  State<Sort> createState() => _SortState();
}

class _SortState extends State<Sort> {
  @override
  Widget build(BuildContext context) {
    bool customIcon = false;
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 60,
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      CommunityMaterialIcons.arrow_left,
                      size: 30,
                    ),
                  ),
                  const Text(
                    "Sort Order",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "clear all",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFF643D)),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            StatefulBuilder(
              builder: (context, setState) => Container(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                child: Column(
                  children: [
                    ExpansionTile(
                      title: const Text(
                        "Method",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      children: [
                        ListTile(
                          title: const Text("Send"),
                          trailing: InkWell(
                              onTap: () {
                                setState(() {
                                  customIcon = !customIcon;
                                });
                              },
                              child: Icon(customIcon == true
                                  ? Icons.radio_button_off
                                  : Icons.radio_button_checked)),
                        ),
                        ListTile(
                          title: const Text("Recieve"),
                          trailing: InkWell(
                              onTap: () {
                                setState(() {
                                  customIcon = !customIcon;
                                });
                              },
                              child: Icon(customIcon == false
                                  ? Icons.radio_button_off
                                  : Icons.radio_button_checked)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const ExpansionTile(
                      title: Text(
                        "Status",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      children: [
                        ListTile(
                          title: Text("Enroute"),
                          trailing: Icon(Icons.radio_button_off),
                        ),
                        ListTile(
                          title: Text("Delivered"),
                          trailing: Icon(Icons.radio_button_off),
                        ),
                        ListTile(
                          title: Text("Pending"),
                          trailing: Icon(Icons.radio_button_off),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 327,
              height: 52,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xffffd683d)),
              child: const Center(
                  child: Text(
                "Save",
                style: TextStyle(color: Colors.white, fontSize: 18),
              )),
            )
          ],
        ),
      ),
    );
  }
}
