import 'package:flutter/material.dart';
import 'package:mybank_ui/constant/app_textstyle.dart';
import 'package:mybank_ui/data/card_data.dart';

class Mycard extends StatelessWidget {
  final CardModel card;
  Mycard({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 200,
      width: 350,
      decoration: BoxDecoration(
          color: card.cardColor, borderRadius: BorderRadius.circular(20)),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CARD NAME',
                      style: Apptextstyle.MY_CARD_TITLE,
                    ),
                    Text(
                      card.cardholdername,
                      style: Apptextstyle.MY_CARD_SUBTITLE,
                    )
                  ],
                ),
                Text(
                  card.cardnumber,
                  style: Apptextstyle.MY_CARD_SUBTITLE,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'EXP DATE',
                          style: Apptextstyle.MY_CARD_SUBTITLE,
                        ),
                        Text(
                          card.expdate,
                          style: Apptextstyle.MY_CARD_SUBTITLE,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CVV NUMBER',
                          style: Apptextstyle.MY_CARD_SUBTITLE,
                        ),
                        Text(
                          card.cvv,
                          style: Apptextstyle.MY_CARD_SUBTITLE,
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/images/Mastercard-Logo.png'),
                )
              ],
            )
          ]),
    );
  }
}
