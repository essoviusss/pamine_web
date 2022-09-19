// ignore_for_file: depend_on_referenced_packages

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:pamine_web/mainpage/homepage.dart';
import 'package:pamine_web/mainpage/sidebar_page/account_approval.dart';
import 'package:pamine_web/mainpage/sidebar_page/verified_users.dart';
import 'package:pamine_web/mainpage/sidebar_page/profile.dart';
import 'package:pamine_web/mainpage/sidebar_page/transactions.dart';
import 'package:pamine_web/mainpage/sidebar_page/users_information.dart';
import 'package:pamine_web/mainpage/sidebar_page/video_management.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pamine-Admin-WebApp',
      home: const HomePage(),
      routes: {
        Transactions.id: (context) => const Transactions(),
        HomePage.id: (context) => const HomePage(),
        AccountApproval.id: (context) => const AccountApproval(),
        VerifiedUsers.id: (context) => const VerifiedUsers(),
        UsersInformation.id: (context) => const UsersInformation(),
        VideoManagement.id: (context) => const VideoManagement(),
        Profile.id: (context) => const Profile(),
      },
    );
  }
}
