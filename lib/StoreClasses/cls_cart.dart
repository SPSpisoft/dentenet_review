import 'dart:convert';
import 'cls_cart_detail.dart';

List<ClsCart> clsCartFromJson(String str) => List<ClsCart>.from(json.decode(str).map((x) => ClsCart.fromJson(x)));

String clsCartToJson(List<ClsCart> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ClsCart {
  ClsCart({
    required this.cartDetails,
    required this.cartId,
    required this.cartIdValid,
    required this.countRow,
    required this.customerDeviceId,
    required this.customerId,
    required this.levelId,
    required this.netRec,
    required this.statusCode,
    required this.storeCode,
    required this.totalAmount,
    required this.totalPrice,
    required this.validateCD,
  });

  String cartId;
  int netRec;
  String validateCD;
  int statusCode;
  String customerId;
  String customerDeviceId;
  String storeCode;
  int levelId;
  String cartIdValid;
  int countRow;
  double totalAmount;
  double totalPrice;
  List<ClsCartDetail>? cartDetails;

  factory ClsCart.fromJson(Map<String, dynamic> json) => ClsCart(
    cartId: json["CartId"] ,
    netRec: json["NetRec"],
    validateCD: json["ValidateCD"],
    statusCode: json["StatusCode"],
    customerId: json["CustomerId"],
    customerDeviceId: json["CustomerDeviceId"],
    storeCode: json["StoreCode"],
    levelId: json["LevelId"],
    cartIdValid: json["CartIdValid"],
    countRow: json["CountRow"],
    totalAmount: json["TotalAmount"],
    totalPrice: json["TotalPrice"],
    cartDetails: List<ClsCartDetail>.from(json["CartDetails"].map((x) => ClsCartDetail.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "CartId": cartId,
    "NetRec": netRec,
    "ValidateCD": validateCD,
    "StatusCode": statusCode,
    "CustomerId": customerId,
    "CustomerDeviceId": customerDeviceId,
    "StoreCode": storeCode,
    "LevelId": levelId,
    "CartIdValid": cartIdValid,
    "CountRow": countRow,
    "TotalAmount": totalAmount,
    "TotalPrice": totalPrice,
    "CartDetails": cartDetails == null || cartDetails!.isEmpty ? [] : List<dynamic>.from(cartDetails!.map((x) => x.toJson())),
  };

}
