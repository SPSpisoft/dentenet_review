import 'dart:convert';

List<ClsCartDetail> clsTagsFromJson(String str) => List<ClsCartDetail>.from(json.decode(str).map((x) => ClsCartDetail.fromJson(x)));

String clsTagsToJson(List<ClsCartDetail> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ClsCartDetail {
  ClsCartDetail({
    required this.storeCode,
    required this.statusCode,
    required this.cartId,
    required this.amount,
    required this.cartDetailId,
    required this.crtTimeDetail,
    required this.description,
    // required this.Detail,
    required this.iDMerge,
    // required this.IdRec,
    required this.inquiry,
    required this.invAdd,
    required this.invAvailable,
    required this.parent,
    required this.parentCode,
    required this.percentOff,
    required this.prdCode,
    required this.price,
    required this.price4C,
    required this.pricePlus,
    required this.pricePlusDesc,
    required this.priceTotal,
    required this.selJump,
    required this.selMaxLimit,
    required this.selMinLimit,
    required this.sumAmount,
    required this.title,
    required this.unitNet,
    required this.updTimeDetail,
  });

  String cartId;
  String cartDetailId;
  String parentCode;
  String parent;
  String prdCode;
  String iDMerge;
  String title;
  double price;
  double price4C;
  double pricePlus;
  double priceTotal;
  String pricePlusDesc;
  double percentOff;
  bool inquiry;
  double amount;
  double sumAmount;
  double selMinLimit;
  double selMaxLimit;
  double selJump;
  double invAvailable;
  bool invAdd;
  String? unitNet;
  String description;
  String storeCode;
  DateTime? crtTimeDetail;
  DateTime? updTimeDetail;
  int statusCode;

  factory ClsCartDetail.fromJson(Map<String, dynamic> json) => ClsCartDetail(
        // IdRec: json["IdRec"],
        // Detail: json["Detail"],
        cartId: json["CartId"],
        cartDetailId: json["CartDetailId"],
        parentCode: json["ParentCode"],
        parent: json["Parent"],
        prdCode: json["PrdCode"],
        iDMerge: json["IDMerge"],
        title: json["Title"],
        price: json["Price"],
        price4C: json["Price4C"],
        pricePlus: json["PricePlus"],
        priceTotal: json["PriceTotal"],
        pricePlusDesc: json["PricePlusDesc"],
        percentOff: json["PercentOff"],
        inquiry: json["Inquiry"],
        amount: json["Amount"],
        sumAmount: json["SumAmount"],
        selMinLimit: json["SelMinLimit"],
        selMaxLimit: json["SelMaxLimit"],
        selJump: json["SelJump"],
        invAvailable: json["InvAvailable"],
        invAdd: json["InvAdd"],
        unitNet: json["UnitNet"],
        description: json["Description"],
        storeCode: json["StoreCode"],
        crtTimeDetail: DateTime.parse(json["CrtTime_Detail"]),
        updTimeDetail: DateTime.parse(json["UpdTime_Detail"]),
        statusCode: json["StatusCode"],
      );

  Map<String, dynamic> toJson() => {
        // "IdRec": IdRec,
        // "Detail": Detail,
        "CartId": cartId ,
        "CartDetailId": cartDetailId,
        "ParentCode": parentCode,
        "Parent": parent,
        "PrdCode": prdCode,
        "IDMerge": iDMerge,
        "Title": title,
        "Price": price,
        "Price4C": price4C,
        "PricePlus": pricePlus,
        "PriceTotal": priceTotal,
        "PricePlusDesc": pricePlusDesc,
        "PercentOff": percentOff,
        "Inquiry": inquiry,
        "Amount": amount,
        "SumAmount": sumAmount,
        "SelMinLimit": selMinLimit,
        "SelMaxLimit": selMaxLimit,
        "SelJump": selJump,
        "InvAvailable": invAvailable,
        "InvAdd": invAdd,
        "UnitNet": unitNet,
        "Description": description,
        "StoreCode": storeCode,
        "CrtTime_Detail": crtTimeDetail,
        "UpdTime_Detail": updTimeDetail,
        "StatusCode": statusCode,
      };
}
