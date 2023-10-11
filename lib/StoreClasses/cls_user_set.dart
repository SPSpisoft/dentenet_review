import 'dart:convert';
import 'cls_address.dart';
import 'cls_communication.dart';

String clsListUserSetToJson(List<ClsUserSet> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

String clsUserSetToJson(ClsUserSet data) => json.encode(data.toJson());

class ClsUserSet {
  ClsUserSet({
    required this.userID,
    this.password,
    this.newPassword,
    this.nikName ,
    this.userName,
    this.profileImgUrl,
    this.config,
    this.genderCode,
    this.birthday,
    this.listAddress,
    this.comus,
  });

  String userID ;
  String? password ;
  String? newPassword ;
  String? nikName ;
  String? userName ;
  String? profileImgUrl ;
  String? config ;
  int? genderCode = 0 ;
  String? birthday ;
  List<ClsAddress>? listAddress ;
  List<ClsCommunication>? comus ;

  Map<String, dynamic> toJson() => {
        "UserID": userName,
        "Password": password,
        "newPassword": newPassword,
        "NikName": nikName,
        "ProfileImgUrl": profileImgUrl,
        "Config": config,
        "GenderCode": genderCode,
        "Birthday": birthday,
        "ListAddress": listAddress == null? [] : List<dynamic>.from(listAddress!.map((x) => x.toJson())),
        "Comus": comus == null? [] : List<dynamic>.from(comus!.map((x) => x.toJson())),
      };
}
