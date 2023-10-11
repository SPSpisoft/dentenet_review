import 'dart:convert' as convert;

import 'package:shared_preferences/shared_preferences.dart';

import 'StoreClasses/cls_cart.dart';
import 'StoreClasses/cls_cartex.dart';
import 'StoreClasses/cls_search.dart';
import 'StoreClasses/cls_store.dart';
import 'StoreClasses/cls_tags.dart';

enum TagType {sys, root}
enum UserStatus {unknown, register, waitSms, setPass, login, stable}

class Globals {
  static late ClsStore myStore ;
  static late Future<List<ClsStore>> futureStoreTarget;
  static late Future<List<ClsTags>> futureTags;
  static late Future<List<ClsSearch>> futureSearch;
  static late Future<List<ClsCart>> futureCurrentCart;

  static late ClsCartex tmpCartex;

  static late List<ClsSearch> productList;
  static List<ClsCart> currentCart = [];

  static String appTitle = 'SPSTORE';

  static String baseUrl = 'https://shop.spisoft.ir/';
  // static String baseUrl = 'http://199.166.1.6/shop/';

  static String baseApiAddress = '${baseUrl}api/Master?';
  // static String myStoreId = 'SpDentStore';
  // static String myStoreId = 'Olamayi_Yaraq';
  // static String myStoreId = 'olamayi_abzar';
  static String myStoreId = 'Olamaee_Store';

  static String myFileApk = 'OlamaeeGallery.apk';

  static int storePriceFormat = 0;

  static const String authorizationUser = 'SPUSER_1';
  static const String authorizationPass = 'SPPASS_123asdASD!@#';
  static String basicAuth = 'Basic ${convert.base64Encode(convert.utf8.encode('$authorizationUser:$authorizationPass'))}';

  static String tagTypeSYS = 'SYS';
  static String tagTypeROOT = 'ROOT';
  static List<StackTag> stackTag = [];

  static String myPrivateKey = "ANDxKu0ZyzdlnEEK7HKrKSvImTmmXFmGVqu4dL84kHPupsZvTARxpv8gPxzOcPCHaQyhVhpujcPZW3inYfPcQsQgPA8vBEYg1ASYMbzr7u8YgBljpGui44hTqvQyPTBv";
  static String myTypeID = "ANDA";
  static String myUserID = '';
  static String myPassword = '';
  static String myNetIP = '';
  static String myDeviceId = '';
  static String myAppVersion = '';
  static String myAppBuildNumber = '';
  static String myToken = '';

  static late SharedPreferences prefs;
  static String prfRemember = 'prfRemember';
  // static String prfUserID = 'prfUserID';
  static String prfCountryCode = 'prfCountryCode';
  static String prfMobile = 'prfMobile';
  static String prfPassword = 'prfPassword';

}

class StackTag {
  String tagId;
  double scrollPosition;

  StackTag(this.tagId, this.scrollPosition);
}

class CartTypeEnum {
  static CartType get cartAll => CartType(code: 9, title: 'CartAll');
  static CartType get cartDelivered => CartType(code: 7, title: 'CartDelivered');
  static CartType get cartPosted => CartType(code: 6, title: 'CartPosted');
  static CartType get cartAccepted => CartType(code: 5, title: 'CartAccepted');
  static CartType get cartEdited => CartType(code: 4, title: 'CartEdited');
  static CartType get cartReceived => CartType(code: 3, title: 'CartReceived');
  static CartType get cartSendSignal => CartType(code: 2, title: 'CartSendSignal');
  static CartType get cartClosed => CartType(code: 1, title: 'CartClosed');
  static CartType get cartOpened => CartType(code: 0, title: 'CartOpened');
  static CartType get cartCanceled => CartType(code: -1, title: 'CartCanceled');
  static CartType get cartDisapproval => CartType(code: -2, title: 'Disapproval');
  static CartType get cartReserved => CartType(code: -3, title: 'CartReserved');
  static CartType get cartRetOff => CartType(code: -7, title: 'CartRetOff');
  static CartType get cartRetInv => CartType(code: -8, title: 'CartRetInv');
  static CartType get cartFavorite => CartType(code: -9, title: 'CartFavorite');
  static CartType get cartDeleted => CartType(code: -10, title: 'CartDeleted');
}

class CartType {
  CartType({
    required this.code,
    required this.title,
  });

  String title ;
  int code ;

  String get codeAsString => code.toString();
}
