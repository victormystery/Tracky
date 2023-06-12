import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

class CheckRate extends StatefulWidget {
  const CheckRate({super.key});

  @override
  State<CheckRate> createState() => _CheckRateState();
}

class _CheckRateState extends State<CheckRate> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(top: 70, left: 15, right: 10),
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
                const SizedBox(width: 80),
                const Text(
                  "Check Rates",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBox(height: 30),
            FittedBox(
              child: Row(
                children: [
                  const Icon(CommunityMaterialIcons.record_circle_outline),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 310,
                    child: TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          fillColor: Colors.grey[250],
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          suffixIcon: const Icon(
                            Icons.gps_fixed_outlined,
                            color: Colors.grey,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  const BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  const BorderSide(color: Colors.transparent)),
                          hintText: "Location for pickup"),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            FittedBox(
              child: Row(
                children: [
                  const Icon(Icons.location_on_rounded),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 310,
                    child: TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          fillColor: Colors.grey[250],
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          suffixIcon: const Icon(
                            Icons.gps_fixed_outlined,
                            color: Colors.grey,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  const BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  const BorderSide(color: Colors.transparent)),
                          hintText: "Package Destination"),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Size",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        fillColor: Colors.grey[250],
                        filled: true,
                        prefixIcon: const Icon(
                          CommunityMaterialIcons.package_variant_closed,
                          color: Colors.grey,
                        ),
                        suffixText: "Kg",
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide:
                                const BorderSide(color: Colors.transparent)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide:
                                const BorderSide(color: Colors.transparent)),
                        hintText: "0"),
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 27, right: 27),
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFFFD683D)),
                  child: const Text(
                    "Check",
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
