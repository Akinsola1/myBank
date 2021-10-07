import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mybank_ui/constant/app_textstyle.dart';
import 'package:mybank_ui/constant/color_constant.dart';
import 'package:mybank_ui/data/card_data.dart';
import 'package:mybank_ui/data/transaction_data.dart';
import 'package:mybank_ui/widget/my_card.dart';
import 'package:mybank_ui/widget/transaction_widget.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  _home_screenState createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Bank',
          style: TextStyle(fontFamily: "poppins", color: KPrimaryColor),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://avatarfiles.alphacoders.com/241/241365.jpg"),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_active_outlined,
                size: 28,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 240,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Mycard(card: myCards[index]);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                  itemCount: myCards.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('RECENT TRANSACTIONS', style: Apptextstyle.BODY_TEXT),
              SizedBox(
                height: 25,
              ),

              ListView.separated(itemBuilder: (context, index) {
                return Transactioncard(
                  transaction: myTransaction[index]
                );
              },
               separatorBuilder: (context, index) {
                 return SizedBox(
                   height: 15,
                 );
               },
                itemCount: myTransaction.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                )
            ],
          ),
        ),
      ),
    );
  }
}
