import 'package:barcode_widget/barcode_widget.dart';
import 'package:book_ticket_ui/screens/ticket_view.dart';
import 'package:book_ticket_ui/utils/app_layout.dart';
import 'package:book_ticket_ui/utils/hotels_info_list.dart';
import 'package:book_ticket_ui/widgets/column_layout.dart';
import 'package:book_ticket_ui/widgets/layout_builder_widget.dart';
import 'package:book_ticket_ui/widgets/ticket_tabs.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    // final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
              children: [
                Gap(AppLayout.getHeight(40)),
                Text("Tickets",
                    style: Styles.headLineStyle1
                        .copyWith(fontSize: AppLayout.getWidth(35))),
                Gap(AppLayout.getHeight(20)),
                const TicketTabs(firstTable: "Upcoming", secondTable: "Previous"),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: true,
                  ),
                ),
                const SizedBox(height: 1),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          ColumnLayout(
                            firstText: "Flutter Dash",
                            secondText: "Passenger",
                            alignment: CrossAxisAlignment.start,
                            isColor: true,
                          ),
                          Spacer(),
                          ColumnLayout(
                            firstText: "5221 478566",
                            secondText: "Passport",
                            alignment: CrossAxisAlignment.end,
                            isColor: true,
                          )
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const AppLayoutBuilder(
                        isColor: false,
                        sections: 15,
                        width: 5,
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const Row(
                        children: [
                          ColumnLayout(
                            firstText: "4332 565 97033",
                            secondText: "Number of E-ticket",
                            alignment: CrossAxisAlignment.start,
                            isColor: true,
                          ),
                          Spacer(),
                          ColumnLayout(
                            firstText: "B2SG28",
                            secondText: "Booking code",
                            alignment: CrossAxisAlignment.end,
                            isColor: true,
                          )
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const AppLayoutBuilder(isColor: false, sections: 15, width: 5),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                      height: 17,
                                      child: Image.asset(
                                          "assets/images/book_ticket/visa.png")),
                                  Text("****2462",
                                      style: Styles.headLineStyle3),
                                ],
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "Payment method",
                                style: Styles.headLineStyle4,
                              )
                            ],
                          ),
                          const Spacer(),
                          const ColumnLayout(
                            firstText: "\$249.99",
                            secondText: "Price",
                            alignment: CrossAxisAlignment.end,
                            isColor: true,
                          )
                        ],
                      ),
                      const SizedBox(height: 1),
                      Gap(AppLayout.getHeight(20)),
                    ],
                  ),
                ),
                const SizedBox(height: 1),
                //barCode
                Container(
                  padding: EdgeInsets.only(top: AppLayout.getHeight(20),bottom: AppLayout.getHeight(20)),
                  margin: EdgeInsets.only(right: AppLayout.getHeight(15),left: AppLayout.getHeight(15)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(AppLayout.getHeight(20)),
                      bottomLeft: Radius.circular(AppLayout.getHeight(20)),
                    ),
                    color: Colors.white,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        data: 'https://pub.dev/packages/barcode_widget',
                        drawText: false,
                        color: Styles.textColor,
                        width: double.infinity,
                        height: AppLayout.getHeight(70),

                      ),
                    ),
                  ),
                ),

                Gap(AppLayout.getHeight(20)),

                //ticketView
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: TicketView(
                    ticket: ticketList[0],
                  ),
                ),

              ],
            ),
            Positioned(
              top: AppLayout.getHeight(295),
              left: AppLayout.getHeight(22),
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor,width: 2),

                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
            Positioned(
              top: AppLayout.getHeight(295),
              right: AppLayout.getHeight(22),
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor,width: 2),

                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),

          ],
        ));
  }
}
