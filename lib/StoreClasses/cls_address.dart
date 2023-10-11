import 'dart:convert';

import '../store_global_variables.dart';

String clsListCartexToJson(List<ClsAddress> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

String clsCartexToJson(ClsAddress data) => json.encode(data.toJson());

class ClsAddress {
  ClsAddress({
    this.status,
    this.cartexId,
    this.fromDeviceId,
    this.customerId ,
    this.storeCode,
    this.validateCD,
    this.cartDetailID,
    this.iDMerge,
    this.prdCode,
    this.amount,
    this.newAmount,
    this.price,
    this.percentOff,
    this.sumAmount,
    this.totalAmount,
    this.invAvailable,
    this.invAdd,
  });

  int? status;
  String? validateCD;
  String? cartexId;
  String? fromDeviceId = Globals.myDeviceId;
  String? customerId = Globals.myUserID;
  String? storeCode = Globals.myStoreId;
  String? cartDetailID;
  String? iDMerge;
  String? prdCode;
  double? amount;
  double? newAmount;
  double? price;
  double? percentOff;
  double? sumAmount;
  double? totalAmount;
  double? invAvailable;
  bool? invAdd;

  Map<String, dynamic> toJson() => {
        "Status": status,
        "ValidateCD": validateCD,
        "CartexId": cartexId,
        "FromDeviceId": fromDeviceId,
        "CustomerId": customerId,
        "CartDetailID": cartDetailID,
        "StoreCode": storeCode,
        "IDMerge": iDMerge,
        "PrdCode": prdCode,
        "Amount": amount,
        "TotalAmount": totalAmount,
        "NewAmount": newAmount,
        "Price": price,
        "PercentOff": percentOff,
        "SumAmount": sumAmount,
        "InvAdd": invAdd,
        "InvAvailable": invAvailable,
      };
}
