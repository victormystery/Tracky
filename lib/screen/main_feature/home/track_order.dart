import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({super.key});

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
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
                const SizedBox(width: 95),
                const Text(
                  "Track",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBox(height: 30),
            TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  fillColor: Colors.grey[250],
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  suffixIcon: const Icon(
                    CommunityMaterialIcons.qrcode_scan,
                    color: Colors.grey,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.transparent)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.transparent)),
                  hintText: "Enter Tracking Number"),
              keyboardType: TextInputType.text,
            ),
            Center(
              heightFactor: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/Ellipse 139.png",
                    width: 150,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "You Have No History Yet",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "When tracking history appear, you will see them here",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
