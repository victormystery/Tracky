import 'package:flutter/material.dart';

import '../widget.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey formKey = GlobalKey();
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(top: 70, right: 20, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  "Edit Profile",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBox(height: 30),
            const CircleAvatar(radius: 60),
            const SizedBox(height: 30),
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Full Name",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 5),
                        TextFormField(
                          initialValue: "Michael Sam",
                          keyboardType: TextInputType.name,
                          decoration: textInputDecoration.copyWith(
                              hintText: "Enter New username",
                              prefixIcon: const Icon(Icons.person)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Phone Number",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 5),
                        TextFormField(
                          initialValue: "+2347019392065",
                          keyboardType: TextInputType.name,
                          decoration: textInputDecoration.copyWith(
                              hintText: "Enter Your Phone Number",
                              prefixIcon: const Icon(Icons.phone)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Save"),
                            style: ElevatedButton.styleFrom(
                                elevation: 0.0,
                                padding: EdgeInsets.fromLTRB(50, 10, 50, 10)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
