import 'screen/auth/register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'helper/services/auth_service.dart';
import 'screen/splashscreen.dart';

import 'package:appwrite/appwrite.dart';

Client client = Client();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  client
      .setEndpoint('https://cloud.appwrite.io/v1') // Your Appwrite Endpoint
      .setProject('64803fde954ec642d160'); // Your project ID
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AuthService authService = AuthService();
  // This widget is the root of your application.
  Widget currentPage = Register();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkLogin();
  }

  void checkLogin() async {
    String? token = await authService.getToken();

    if (token != null) {
      setState(() {
        currentPage = SplashScreen();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: currentPage,
    );
  }
}
