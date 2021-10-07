import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mybank_ui/constant/app_textstyle.dart';
import 'package:mybank_ui/data/transaction_data.dart';

class Transactioncard extends StatelessWidget {
  final TransactionModel transaction;
  const Transactioncard({Key? key, required this.transaction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: transaction.color,
                ),
                child: Image.asset(transaction.avater),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.name,
                    style: Apptextstyle.LISTTILE_TITLE,
                  ),
                  Text(
                    transaction.month,
                    style: Apptextstyle.LISTTILE_SUB_TITLE,
                  )
                ],
              ),
              SizedBox(
                width: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        transaction.currentBalance,
                        style: Apptextstyle.LISTTILE_TITLE,
                      ),
                      Row(
                        children: [
                          transaction.changePercentageindicator == 'up'?
                          Icon(FontAwesomeIcons.levelUpAlt,
                          size: 10,
                          color: Colors.green,
                          ):
                          Icon(FontAwesomeIcons.levelDownAlt,
                          size: 10,
                          color: Colors.red,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(transaction.changePercentage,
                          style: Apptextstyle.LISTTILE_TITLE,
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
