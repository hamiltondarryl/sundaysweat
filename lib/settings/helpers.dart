import 'dart:math';

import 'package:url_launcher/url_launcher.dart';

class Helpers {

  static const String nameApp = "Sundaysweat";
  static const String basicUrl = "";
  static const String userApiBasicAth = "";
  static const String passwordApiBasicAuth = "";

  //Fonction de géneration de code OTP
  static String codeOtp(){
      var r =   Random().nextInt(9999).toString().padLeft(4, '0');
      return r ;
  }
  
   //Fonction pour l'envoie des mails
  static  Future<void> lancerEmail(String email) async {
    final Uri launchUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    await launch(launchUri.toString());
  }

   //Fonction pour effectuer des appels
  static Future<void> lancerAppel(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launch(launchUri.toString());
  }




}