import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app_ui/screens/hotel.dart';
import 'package:travel_app_ui/screens/ticket.dart';
import 'package:travel_app_ui/utils/app_styles.dart';
import 'package:travel_app_ui/utils/list_infos.dart';
import 'package:travel_app_ui/widgets/double_text.dart';

class MyHomeWidget extends StatelessWidget {
  const MyHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning",
                          style: AppStyles.headLineStyle3,
                        ),
                        Gap(5),
                        Text(
                          "Book Tickets",
                          style: AppStyles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage("assets/images/ticket-logo.jpeg")),
                      ),
                    )
                    // Image.asset("assets/images/ticket-logo.png"),
                  ],
                ),
                Gap(25),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFF4F6FD)),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_filled,
                        color: Color(0xFFBFC205),
                      ),
                      Gap(10),
                      Text(
                        "Search",
                        style: AppStyles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                Gap(40),
                AppDoubleText(title: "Upcomming flights", action: "view all"),
              ],
            ),
          ),
          Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 16),
            child: Row(
              children: ticketList
                  .map((singleTicket) => TicketView(tickets: singleTicket))
                  .toList(),
            ),
          ),
          Gap(15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: AppDoubleText(title: "Hotels", action: "view all"),
          ),
          Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 16),
            child: Row(
                children: hotelList
                    .map((singleHotel) => HotelView(hotel: singleHotel))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
