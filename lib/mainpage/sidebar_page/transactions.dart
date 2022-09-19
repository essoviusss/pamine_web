import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:pamine_web/mainpage/homepage.dart';
import 'package:pamine_web/mainpage/sidebar_page/account_approval.dart';
import 'package:pamine_web/mainpage/sidebar_page/verified_users.dart';
import 'package:pamine_web/mainpage/sidebar_page/profile.dart';
import 'package:pamine_web/mainpage/sidebar_page/users_information.dart';
import 'package:pamine_web/mainpage/sidebar_page/video_management.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});
  static String id = 'Transactions';

  @override
  Widget build(BuildContext context) {
    double heightVar = MediaQuery.of(context).size.height;
    double witdhVar = MediaQuery.of(context).size.width;
    return AdminScaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Pamine Admin'),
        backgroundColor: Colors.red,
      ),
      sideBar: SideBar(
        iconColor: Colors.white,
        activeBackgroundColor: const Color(0xff25374F),
        activeIconColor: Colors.white,
        backgroundColor: const Color(0xff25374F),
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.w900),
        activeTextStyle: const TextStyle(color: Colors.white, fontSize: 15),
        borderColor: Colors.blue,
        width: witdhVar / 6.8,
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
                title: 'Banned Account',
                route: VerifiedUsers.id,
              ),
              AdminMenuItem(
                title: 'Users Information',
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
        selectedRoute: Transactions.id,
        onSelected: (item) {
          if (item.route != null) {
            Navigator.of(context).pushNamed(item.route!);
          }
        },
        header: Container(
          height: 50,
          width: double.infinity,
          color: Colors.blueAccent,
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
          color: Colors.blueAccent,
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
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(10),
          child: const Text(
            'Transaction Page',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 36,
            ),
          ),
        ),
      ),
    );
  }
}
