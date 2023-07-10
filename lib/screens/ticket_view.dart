import 'package:book_ticket_ui/utils/app_layout.dart';
import 'package:book_ticket_ui/utils/app_styles.dart';
import 'package:book_ticket_ui/widgets/column_layout.dart';
import 'package:book_ticket_ui/widgets/layout_builder_widget.dart';
import 'package:book_ticket_ui/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;

  const TicketView({Key? key, required this.ticket, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            //showing the blue part of the ticket
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(20)),
                      topRight: Radius.circular(AppLayout.getHeight(20))),
                  color: isColor == null ? Styles.orangeColor : Colors.white),
              //
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                      Expanded(child: Container()),
                      ThickContainer(isColor: isColor),
                      Expanded(
                          child: Stack(children: [
                        SizedBox(
                          height: AppLayout.getHeight(24),
                          child: const AppLayoutBuilder(sections: 6)
                        ),
                        Center(
                          child: Transform.rotate(
                            angle: 1.5,
                            child: Icon(
                              Icons.local_airport_rounded,
                              color: isColor==null?Colors.white:const Color(0xFF8ACCF7),
                            ),
                          ),
                        ),
                      ])),
                      ThickContainer(isColor: isColor),
                      Expanded(child: Container()),
                      Text(
                        ticket['to']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(3)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(ticket['from']['name'],
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4),
                      ),
                      Text(ticket['flying time'],
                          style: isColor == null
                              ? Styles.headLineStyle4
                              .copyWith(color: Colors.white)
                              : Styles.headLineStyle4.copyWith(color: Colors.black)),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(ticket['to']['name'],
                            textAlign: TextAlign.end,
                            style: isColor == null
                                ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                                : Styles.headLineStyle4),
                      ),
                    ],
                  )
                ],
              ),
            ),

            //showing the red part of the ticket
            Container(
              color: isColor==null?const Color(0xFFF36B57):Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(AppLayout.getHeight(10)),
                            bottomRight:
                                Radius.circular(AppLayout.getHeight(10)),
                          )),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(AppLayout.getHeight(12)),
                      child: LayoutBuilder(
                          builder: (BuildContext, BoxConstraints constraints) {
                        print("the width is${constraints.constrainWidth()}");
                        return Flex(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            direction: Axis.horizontal,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (constraints.constrainWidth() / 15).floor(),
                                (index) => SizedBox(
                                      width: AppLayout.getWidth(5),
                                      height: AppLayout.getHeight(1),
                                      child: DecoratedBox(
                                        decoration:
                                            BoxDecoration(color: isColor==null?Colors.white:Colors.grey.shade300),
                                      ),
                                    )));
                      }),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppLayout.getHeight(10)),
                            bottomLeft:
                                Radius.circular(AppLayout.getHeight(10)),
                          )),
                    ),
                  ),
                ],
              ),
            ),

            //bottom part of the red ticket
            Container(
              decoration: BoxDecoration(
                color: isColor==null?const Color(0xFFF36B57):Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppLayout.getHeight(isColor==null?20:0)),
                    bottomRight: Radius.circular(AppLayout.getHeight(isColor==null?20:0))),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(firstText: ticket['date'], secondText: "DATE", alignment: CrossAxisAlignment.start,isColor: isColor,),
                      ColumnLayout(firstText: ticket['departure_time'], secondText: "Departure Time", alignment: CrossAxisAlignment.center,isColor: isColor),
                      ColumnLayout(firstText: ticket['number'].toString(), secondText: 'NUMBER', alignment: CrossAxisAlignment.end,isColor: isColor),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
