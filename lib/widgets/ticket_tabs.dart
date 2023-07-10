import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
class TicketTabs extends StatelessWidget {
  final String firstTable;
  final String secondTable;

  const TicketTabs({Key? key,required this.firstTable,required this.secondTable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
          color: const Color(0xFFF4F6FD),
        ),
        child: Row(
          children: [
            //airplane tickets
            Container(
                width: size.width * .44,
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(7)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getHeight(50))),
                ),
                child: Center(
                  child: Text(firstTable),
                )),

            //hotels
            Container(
                width: size.width * .44,
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(7)),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayout.getHeight(50))),
                ),
                child: Center(
                  child: Text(secondTable),
                )),
          ],
        ),
      ),
    );
  }
}
