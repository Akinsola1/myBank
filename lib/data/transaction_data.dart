import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TransactionModel {
  String name;
  String avater;
  String currentBalance;
  String month;
  String changePercentageindicator;
  String changePercentage;
  Color color;

  TransactionModel({
    required this.avater,
    required this.changePercentage,
    required this.changePercentageindicator,
    required this.currentBalance,
    required this.month,
    required this.name,
    required this.color,
  });
}

List<TransactionModel> myTransaction = [ 
  TransactionModel(
      avater: "assets/images/avater2.png",
      changePercentage: "0.41",
      changePercentageindicator: "up",
      currentBalance: "#19,000",
      month: "Feb",
      name: "Faruq",
      color: Colors.green.shade100,
      ),

  TransactionModel(
      avater: "assets/images/avater2.png",
      changePercentage: "0.41",
      changePercentageindicator: "down",
      currentBalance: "#14,000",
      month: "May",
      name: "Akins",
      color: Colors.green.shade100,
      ),

  TransactionModel(
      avater: "assets/images/avater3.png",
      changePercentage: "0.41",
      changePercentageindicator: "up",
      currentBalance: "#20,000",
      month: "Jan",
      name: "Faruq",
      color: Colors.green.shade100,
      ),
    

  TransactionModel(
      avater: "assets/images/avater3.png",
      changePercentage: "0.41",
      changePercentageindicator: "down",
      currentBalance: "#24,000",
      month: "Sept",
      name: "Faruq",
      color: Colors.green.shade100,
      ),

  
  TransactionModel(
      avater: "assets/images/avater3.png",
      changePercentage: "0.41",
      changePercentageindicator: "up",
      currentBalance: "#52,000",
      month: "Oct",
      name: "Faruq",
      color: Colors.green.shade100,
      ),
];
