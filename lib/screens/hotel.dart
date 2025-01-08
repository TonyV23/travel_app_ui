import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app_ui/utils/app_layout.dart';
import 'package:travel_app_ui/utils/app_styles.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelView({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context).width;

    return Container(
      width: size * 0.6,
      height: 350,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 5)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // for image container
          Container(
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppStyles.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel['image']}")),
              )),
          Gap(10),
          Gap(5),
          Text("${hotel['place']}",
              style: AppStyles.headLineStyle2
                  .copyWith(color: AppStyles.kakiColor)),
          Text("${hotel['destination']}",
              style: AppStyles.headLineStyle3.copyWith(color: Colors.white)),
          Gap(8),
          Text("BIF${hotel['price']}",
              style: AppStyles.headLineStyle1.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}
