class AddModel {
  String? businessName;
  String? phoneNumber;
  String? address;
  String? zipCode;

  String? dtiCertNumber;
  String? permitExpDate;
  String? uid;
  String? status;

  AddModel(
      {this.businessName,
      this.phoneNumber,
      this.address,
      this.zipCode,
      this.dtiCertNumber,
      this.permitExpDate,
      this.uid,
      this.status});

  factory AddModel.fromMap(map) {
    return AddModel(
      businessName: map['businessName'],
      phoneNumber: map['phoneNumber'],
      address: map['address'],
      zipCode: map['zipCode'],
      dtiCertNumber: map['dtiCertNumber'],
      permitExpDate: map['permitExpDate'],
      uid: map['uid'],
      status: map['status'],
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'businessName': businessName,
      'phoneNumber': phoneNumber,
      'address': address,
      'zipCode': zipCode,
      'dtiCertNumber': dtiCertNumber,
      'permitExpDate': permitExpDate,
      'uid': uid,
      'status': status,
    };
  }
}
