import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NearDrop extends StatefulWidget {
  const NearDrop({super.key});

  @override
  State<NearDrop> createState() => _NearDropState();
}

class _NearDropState extends State<NearDrop> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(top: 70, left: 15, right: 15),
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
                  const SizedBox(width: 80),
                  const Text(
                    "Nearby Drops",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Container(
                color: Colors.black12,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.45,
                child: Image.asset("images/Artboard mask.png"),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        fillColor: Colors.grey[250],
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.search,
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
                        hintText: "Search Location"),
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.location_on_rounded),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("New Montogomery"),
                          Text("4517 Washington Ave. Manchester..."),
                        ],
                      ),
                      Text(
                        DateFormat.jm().format(DateTime.now()).toString(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.location_on_rounded),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("New Montogomery"),
                          Text("4517 Washington Ave. Manchester..."),
                        ],
                      ),
                      Text(
                        DateFormat.jm().format(DateTime.now()).toString(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.location_on_rounded),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("New Montogomery"),
                          Text("4517 Washington Ave. Manchester..."),
                        ],
                      ),
                      Text(
                        DateFormat.jm().format(DateTime.now()).toString(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.location_on_rounded),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("New Montogomery"),
                            Text("4517 Washington Ave. Manchester..."),
                          ],
                        ),
                        Text(
                          DateFormat.jm().format(DateTime.now()).toString(),
                        ),
                      ],
                    ),
                  
                  const SizedBox(height: 30),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
