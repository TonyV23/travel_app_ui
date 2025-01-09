import 'package:flutter/material.dart';
import 'package:travel_app_ui/utils/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  final String title;
  final String action;
  const AppDoubleText({super.key, required this.title, required this.action});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.headLineStyle2,
        ),
        InkWell(
          child: Text(
            action,
            style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
          ),
        )
      ],
    );
  }
}
