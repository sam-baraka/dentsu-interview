import 'package:auto_route/auto_route.dart';
import 'package:dentsu_interview/main_home/app_bar/app_bar.dart';
import 'package:dentsu_interview/main_home/quotes/tabs/benefits.dart';
import 'package:dentsu_interview/main_home/quotes/tabs/quote_information.dart';
import 'package:dentsu_interview/main_home/quotes/tabs/setup.dart';
import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:flutter/material.dart';

@RoutePage()
class QuoteDetailPage extends StatelessWidget {
  const QuoteDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DentsuColors.lightGreyLight,
      appBar: const AppAppBar(),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'View Quote',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
            ),
            Expanded(
                child: DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        TabBar(
                          tabAlignment: TabAlignment.start,
                          isScrollable: true,
                          tabs: [
                            Tab(
                              text: 'Quote Information',
                            ),
                            Tab(
                              text: 'Setup',
                            ),
                            Tab(
                              text: 'Benefits',
                            ),
                          ],
                        ),
                        Expanded(
                            child: TabBarView(
                          children: [
                            QuoteInformation(),
                            Setup(),
                            Benefits(),
                          ],
                        ))
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
