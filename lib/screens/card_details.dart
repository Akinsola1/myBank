import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mybank_ui/constant/color_constant.dart';
import 'package:mybank_ui/data/card_data.dart';
import 'package:mybank_ui/widget/my_card.dart';

class card_details extends StatefulWidget {
  const card_details({Key? key}) : super(key: key);

  @override
  _card_detailsState createState() => _card_detailsState();
}

class _card_detailsState extends State<card_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Card',
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Mycard(
                  card: myCards[index],
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 20,
                );
              },
              itemCount: myCards.length,
              shrinkWrap: true,
            ),
          ),
          Center(
            child: CircleAvatar(
              radius: 35,
              child: Icon(Icons.add,  size: 30,),
            ),
          ),

        ],
      ),
    );
  }
}
