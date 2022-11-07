import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
              child: Column(
                children: [
                  Gap(AppLayout.getHeight(40)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Morning",
                            style: Styles.headLineStyle3,
                          ),
                          Gap(AppLayout.getHeight(5)),
                          Text(
                            "Book Tickets",
                            style: Styles.headLineStyle,
                          ),
                        ],
                      ),
                      Container(
                        height: AppLayout.getHeight(50),
                        width: AppLayout.getWidth(50),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(10)),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/img_1.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(10)),
                      color: const Color(0xFFF4F6FD),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(12),
                        vertical: AppLayout.getHeight(12)),
                    child: Row(
                      children: [
                        const Icon(
                          FluentIcons.search_12_regular,
                          color: Color(0xFFBFC205),
                        ),
                        Text(
                          "Search",
                          style: Styles.headLineStyle4,
                        ),
                      ],
                    ),
                  ),
                  Gap(AppLayout.getHeight(40)),
                  const AppDoubleText(
                      bigText: "Upcoming Flights", smallText: "View all"),
                ],
              ),
            ),
            Gap(AppLayout.getHeight(15)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: AppLayout.getWidth(20)),
              child: Row(
                  children: ticketList
                      .map((singleTicket) => TicketView(ticket: singleTicket))
                      .toList()),
            ),
            Gap(AppLayout.getHeight(15)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
              child:
                  const AppDoubleText(bigText: "Hotels", smallText: "View all"),
            ),
            Gap(AppLayout.getHeight(15)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: AppLayout.getWidth(20)),
              child: Row(
                  children: hotelList
                      .map((singlehotel) => HotelScreen(hotel: singlehotel))
                      .toList()),
            ),
          ],
        ));
  }
}
