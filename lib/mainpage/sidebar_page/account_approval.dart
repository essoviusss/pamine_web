import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:pamine_web/mainpage/homepage.dart';
import 'package:pamine_web/mainpage/seller_info.dart';
import 'package:pamine_web/mainpage/sidebar_page/verified_users.dart';
import 'package:pamine_web/mainpage/sidebar_page/profile.dart';
import 'package:pamine_web/mainpage/sidebar_page/transactions.dart';
import 'package:pamine_web/mainpage/sidebar_page/users_information.dart';
import 'package:pamine_web/mainpage/sidebar_page/video_management.dart';
import 'package:pamine_web/model/seller_model.dart';

class AccountApproval extends StatefulWidget {
  const AccountApproval({super.key});
  static String id = 'AccountApproval';

  @override
  State<AccountApproval> createState() => _AccountApprovalState();
}

class _AccountApprovalState extends State<AccountApproval> {
  @override
  Widget build(BuildContext context) {
    double heightVar = MediaQuery.of(context).size.height;
    double widthVar = MediaQuery.of(context).size.width;
    Widget rowHeader({int? flex, String? text}) {
      return Expanded(
        flex: flex!,
        child: Container(
          margin: EdgeInsets.only(top: heightVar / 40),
          height: heightVar / 20,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400),
            color: const Color(0xff1C3879),
          ),
          child: Center(
            child: Text(
              text!,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ),
      );
    }

    return AdminScaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Account Approval List",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              rowHeader(flex: 1, text: "Business Name"),
              rowHeader(flex: 1, text: "Phone Number"),
              rowHeader(flex: 2, text: "Address"),
              rowHeader(flex: 1, text: "Action"),
              rowHeader(flex: 1, text: "More Details"),
            ],
          ),
          const SellerInfo(),
        ],
      ),
      backgroundColor: const Color(0xffF9F5EB),
      appBar: AppBar(
        title: const Text('Pamine Admin'),
        backgroundColor: const Color(0xff1C3879),
      ),
      sideBar: SideBar(
        iconColor: Colors.white,
        activeBackgroundColor: const Color(0xff25374F),
        activeIconColor: Colors.white,
        backgroundColor: const Color(0xff25374F),
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.w900),
        activeTextStyle: const TextStyle(
            color: Colors.blue, fontSize: 15, fontWeight: FontWeight.bold),
        borderColor: Colors.blue,
        width: widthVar / 6.8,
        items: [
          AdminMenuItem(
            title: 'Home',
            icon: Icons.home,
            children: [
              AdminMenuItem(
                title: 'Dashboard',
                route: HomePage.id,
                icon: Icons.dashboard,
              ),
              AdminMenuItem(
                title: 'Transactions',
                route: Transactions.id,
                icon: Icons.money,
              ),
            ],
          ),
          AdminMenuItem(
            title: 'Users',
            icon: Icons.verified_user_sharp,
            children: [
              AdminMenuItem(
                title: 'Account Approval',
                route: AccountApproval.id,
              ),
              AdminMenuItem(
                title: 'Verified Users',
                route: VerifiedUsers.id,
              ),
              AdminMenuItem(
                title: 'Banned Users',
                route: UsersInformation.id,
              ),
            ],
          ),
          AdminMenuItem(
            title: 'Videos',
            icon: Icons.play_arrow,
            children: [
              AdminMenuItem(
                title: 'Video Management',
                route: VideoManagement.id,
              ),
            ],
          ),
          AdminMenuItem(
            title: 'Profile',
            icon: Icons.person,
            children: [
              AdminMenuItem(
                title: 'Profile',
                route: Profile.id,
              ),
            ],
          ),
        ],
        selectedRoute: AccountApproval.id,
        onSelected: (item) {
          if (item.route != null) {
            Navigator.of(context).pushNamed(item.route!);
          }
        },
        header: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff607EAA),
          child: const Center(
            child: Text(
              'Welcome adminRobot101',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        footer: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff607EAA),
          child: const Center(
            child: Text(
              'Sign Out',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
