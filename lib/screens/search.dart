import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app_ui/utils/app_layout.dart';
import 'package:travel_app_ui/utils/app_styles.dart';
import 'package:travel_app_ui/widgets/double_text.dart';
import 'package:travel_app_ui/widgets/icon_text.dart';

class MySearchWidget extends StatelessWidget {
  const MySearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Gap(40),
          Text(
            "What are\n you looking for ?",
            style: AppStyles.headLineStyle1.copyWith(fontSize: 35),
          ),
          Gap(20),
          FittedBox(
            child: Container(
              padding: EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppStyles.bgColor),
              child: Row(
                children: [
                  /* for airline tickets*/
                  Container(
                      width: size.width * .44,
                      padding: EdgeInsets.symmetric(vertical: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(50)),
                          color: Colors.white),
                      child: Center(child: Text("Airline Tickets"))),

                  /* for hotels */
                  Container(
                      width: size.width * .44,
                      padding: EdgeInsets.symmetric(vertical: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(50)),
                          color: Colors.grey.shade300),
                      child: Center(child: Text("Hotels"))),
                ],
              ),
            ),
          ),
          Gap(25),
          AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(15),
          AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(25),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
              decoration: BoxDecoration(
                color: Colors.indigo.shade900,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Find tickets",
                  style: AppStyles.headLineStyle4
                      .copyWith(color: Colors.white, fontSize: 20),
                ),
              )),
          Gap(40),
          AppDoubleText(title: "Upcomming flights", action: "view all"),
          Gap(20),
          Row(
            children: [
              Container(
                width: size.width * 0.42,
                height: 380,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/economy_class.jpg"))),
                    ),
                    Text(
                      "20% off on early booking of this flight, Don't miss this chance.",
                      style: AppStyles.headLineStyle2,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
