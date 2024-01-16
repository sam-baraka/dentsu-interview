import 'package:auto_route/auto_route.dart';
import 'package:dentsu_interview/main_home/app_bar/app_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class QuoteDetailPage extends StatelessWidget {
  const QuoteDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'View Quote',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
            ),
            Expanded(
                child: DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        const TabBar(
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
                            Container(),
                            Container(),
                            Container(),
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
