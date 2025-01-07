import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app_ui/utils/app_layout.dart';
import 'package:travel_app_ui/utils/app_styles.dart';
import 'package:travel_app_ui/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: EdgeInsets.only(left: 16),
        child: Column(
          children: [
            // showing ticket part with blue bgColor
            Container(
              decoration: BoxDecoration(
                  color: AppStyles.orangeColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(
                          child: Stack(children: [
                        SizedBox(
                          height: 24,
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => SizedBox(
                                          width: 3,
                                          height: 1,
                                          child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: Colors.white)),
                                        )),
                              );
                            },
                          ),
                        ),
                        Center(
                          child: Transform.rotate(
                            angle: 1.5,
                            child: Icon(
                              Icons.local_airport_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ])),
                      ThickContainer(),
                      Expanded(child: Container()),
                      Text(
                        "LDN",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "New york",
                          style: AppStyles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          "8H 30M",
                          style: AppStyles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text("London",
                            textAlign: TextAlign.end,
                            style: AppStyles.headLineStyle4
                                .copyWith(color: Colors.white)),
                      )
                    ],
                  )
                ],
              ),
            ),
            // showing ticket part with red bgColor
            Container(
              color: AppStyles.orangeBgColor,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                topRight: Radius.circular(10)))),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                  width: 5,
                                  height: 1,
                                  child: DecoratedBox(
                                    decoration:
                                        BoxDecoration(color: Colors.white),
                                  )),
                            ));
                      }),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                topLeft: Radius.circular(10)))),
                  )
                ],
              ),
            ),

            // footer of the ticket
            Container(
              decoration: BoxDecoration(
                  color: AppStyles.orangeBgColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              padding: EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1 MAY",
                            style: AppStyles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          Gap(3),
                          Text(
                            "DATE",
                            style: AppStyles.headLineStyle4
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "8H 30M",
                            style: AppStyles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          Gap(3),
                          Text(
                            "Departure time",
                            style: AppStyles.headLineStyle4
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "23",
                            style: AppStyles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          Gap(3),
                          Text(
                            "Number",
                            style: AppStyles.headLineStyle4
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
