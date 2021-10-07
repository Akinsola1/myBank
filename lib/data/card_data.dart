import 'package:flutter/material.dart';
import 'package:mybank_ui/constant/color_constant.dart';

class CardModel {
  String cardholdername;
  String cardnumber;
  String expdate;
  String cvv;
  Color cardColor;

  CardModel({
    required this.cardholdername,
    required this.cardnumber,
    required this.cvv,
    required this.expdate,
    required this.cardColor,
  });
}

List<CardModel> myCards = [
  CardModel(
      cardholdername: "Akinsola Faruq",
      cardnumber: "**** **** **** 1234",
      cvv: "**4",
      expdate: "12/12",
      cardColor: KSecondaryColor),
  CardModel(
      cardholdername: "AKins AKins",
      cardnumber: "**** **** **** 888",
      cvv: "**9",
      expdate: "05/12",
      cardColor: KPrimaryColor),
];
