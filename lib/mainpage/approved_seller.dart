// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pamine_web/approval_method/approval.dart';
import 'package:pamine_web/model/seller_model.dart';

class ApprovedSellers extends StatefulWidget {
  const ApprovedSellers({super.key});

  @override
  State<ApprovedSellers> createState() => _ApprovedSellersState();
}

class _ApprovedSellersState extends State<ApprovedSellers> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    double heightVar = MediaQuery.of(context).size.height;
    double widthVar = MediaQuery.of(context).size.width;

    // ignore: no_leading_underscores_for_local_identifiers
    Widget _sellerInfo({int? flex, String? text, Widget? widget}) {
      return Expanded(
        flex: flex!,
        child: Container(
          height: heightVar / 12,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: widthVar / 50, vertical: heightVar / 40),
            child: widget ??
                Text(
                  text!,
                  textScaleFactor: 1,
                  style: const TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
          ),
        ),
      );
    }

    return StreamBuilder<QuerySnapshot>(
      stream: firestore.collection('seller_info').snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          print(snapshot.error.toString());
          return const Text('Something went wrong');
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading");
        }
        return ListView.builder(
          shrinkWrap: true,
          itemCount: snapshot.data!.size,
          itemBuilder: (context, index) {
            AddModel seller = AddModel.fromMap(
                snapshot.data!.docs[index].data() as Map<String, dynamic>);

            if (seller.status == "not verified" ||
                seller.status == "rejected") {
              return Container();
            } else {
              return Row(
                children: [
                  _sellerInfo(flex: 1, text: seller.businessName),
                  _sellerInfo(flex: 1, text: seller.phoneNumber),
                  _sellerInfo(flex: 2, text: seller.address),
                  _sellerInfo(flex: 1, text: seller.status),
                  _sellerInfo(
                    flex: 1,
                    widget: ElevatedButton(
                        onPressed: () {}, child: const Text("More Details..")),
                  ),
                ],
              );
            }
          },
        );
      },
    );
  }
}
