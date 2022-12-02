import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ticket_app_flutter/screens/ticket_view.dart';
import 'package:ticket_app_flutter/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good Morning", style: Styles.headlineStyle3),
                          const SizedBox(height: 5, width: 5),
                          Text("Book Tickets", style: Styles.headlineStyle),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/img_1.png"))),
                      )
                    ],
                  ),
                  const SizedBox(height: 25),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF4F6FD)),
                    child: Row(
                      children: [
                        const Icon(CupertinoIcons.search,
                            color: Color(0xFFBFC205)),
                        Text("Search", style: Styles.headlineStyle4)
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Upcoming Flights", style: Styles.headlineStyle3),
                      InkWell(
                        onTap: () => {print("You have tapped")},
                        child: Text("View all",
                            style: Styles.textStyle
                                .copyWith(color: Styles.primaryColor)),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            const TicketView()
          ],
        ));
  }
}
