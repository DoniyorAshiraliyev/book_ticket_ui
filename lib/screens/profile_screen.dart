import 'package:book_ticket_ui/utils/app_layout.dart';
import 'package:book_ticket_ui/widgets/column_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';
import '../widgets/layout_builder_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
          padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(20),
              horizontal: AppLayout.getWidth(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: AppLayout.getHeight(86),
                  width: AppLayout.getWidth(86),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(10)),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/book_ticket/airplaneIcon.jpg"))),
                ),
                Gap(AppLayout.getWidth(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Book Tickets",
                      style: Styles.headLineStyle1,
                    ),
                    Gap(AppLayout.getHeight(2)),
                    Text("New-York",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade500)),
                    Gap(AppLayout.getHeight(8)),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(100)),
                          color: const Color(0xFFFEF4F3)),
                      padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getHeight(3),
                          vertical: AppLayout.getHeight(3)),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF526799)),
                            child: const Icon(
                                FluentSystemIcons.ic_fluent_shield_filled,
                                color: Colors.white,
                                size: 15),
                          ),
                          Gap(AppLayout.getHeight(5)),
                          const Text("Premium status",
                              style: TextStyle(
                                  color: Color(0xFF526799),
                                  fontWeight: FontWeight.w600)),
                          Gap(AppLayout.getHeight(5)),
                        ],
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        print('you are tapped Edit');
                      },
                      child: Text("Edit",
                          style: Styles.textStyle.copyWith(
                              color: Styles.primaryColor,
                              fontWeight: FontWeight.w500)),
                    )
                  ],
                )
              ],
            ),
            Gap(AppLayout.getHeight(8)),
            Divider(color: Colors.grey.shade300),
            Gap(AppLayout.getHeight(8)),
            Stack(
              children: [
                Container(
                  height: AppLayout.getHeight(90),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Styles.primaryColor,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18))),
                ),
                Positioned(
                  right: -45,
                  top: -30,
                  child: Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(30)),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border:
                            Border.all(width: 18, color: const Color(0xFF264CD2))),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(15),
                      vertical: AppLayout.getHeight(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          color: Styles.primaryColor,
                          size: 27,
                        ),
                      ),
                      Gap(AppLayout.getHeight(12)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("You've got a new award",
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                          Text("You have 95 flights in a year",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 16)),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Gap(AppLayout.getHeight(25)),
            Text(
              "Accumulated miles",
              style: Styles.headLineStyle2,
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
                  color: Styles.bgColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 1,
                        spreadRadius: 1)
                  ]),
              child: Column(
                children: [
                  Gap(AppLayout.getHeight(15)),
                  Text("192802",
                      style: TextStyle(
                          fontSize: 45,
                          color: Styles.textColor,
                          fontWeight: FontWeight.w600)),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    children: [
                      Text('Miles accrued',
                          style: Styles.headLineStyle4.copyWith(fontSize: 16)),
                      const Spacer(),
                      Text('5 July 2023',
                          style: Styles.headLineStyle4.copyWith(fontSize: 16)),
                    ],
                  ),
                  Gap(AppLayout.getHeight(4)),
                  Divider(color: Colors.grey.shade300),
                  Gap(AppLayout.getHeight(4)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(
                        firstText: '23 042',
                        secondText: 'Miles',
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      ColumnLayout(
                        firstText: 'Airline CO',
                        secondText: 'Received from',
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(12)),
                  const AppLayoutBuilder(sections: 12, isColor: false),
                  Gap(AppLayout.getHeight(12)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(
                        firstText: '32',
                        secondText: 'Miles',
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      ColumnLayout(
                        firstText: 'McDonal\'s',
                        secondText: 'Received from',
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(12)),
                  const AppLayoutBuilder(sections: 12, isColor: false),
                  Gap(AppLayout.getHeight(12)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(
                        firstText: '52 340',
                        secondText: 'Miles',
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      ColumnLayout(
                        firstText: 'Exuma',
                        secondText: 'Received from',
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(12)),
                  const AppLayoutBuilder(sections: 12, isColor: false),
                ],
              ),
            ),
            Gap(AppLayout.getHeight(25)),
            InkWell(
              onTap: (){
                print("you are tapped Profile miles");
              },
              child: Center(
                child: Text(
                  "How to get more miles",
                  style: Styles.textStyle.copyWith(
                      color: Styles.primaryColor, fontWeight: FontWeight.w500),
                ),
              ),
            ) // Center
          ]),
    );
  }
}
