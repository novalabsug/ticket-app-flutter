import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ticket_app_flutter/utils/app_layout.dart';
import 'package:ticket_app_flutter/utils/app_styles.dart';
import 'package:ticket_app_flutter/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(children: [
          Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(children: [
                Row(
                  children: [
                    Text("NYC",
                        style: Styles.headlineStyle3
                            .copyWith(color: Colors.white)),
                    const Spacer(),
                    ThickContainer(),
                    Expanded(
                        child: SizedBox(
                      height: 24,
                      child: Flex(
                        direction: Axis.horizontal,
                        children: [],
                      ),
                    )),
                    ThickContainer(),
                    const Spacer(),
                    Text("London",
                        style:
                            Styles.headlineStyle3.copyWith(color: Colors.white))
                  ],
                )
              ]))
        ]),
      ),
    );
  }
}
