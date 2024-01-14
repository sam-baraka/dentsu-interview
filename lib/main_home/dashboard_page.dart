import 'package:auto_route/auto_route.dart';
import 'package:dentsu_interview/main_home/app_bar/app_bar.dart';
import 'package:dentsu_interview/main_home/bottom_navigation/bottom_navigation_widget.dart';
import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Dashboard',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
            ),
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                children: const [
                  SizedBox(width: 280, child: TotalLeadsCard()),
                  SizedBox(width: 280, child: LeadsCard()),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}

class TotalLeadsCard extends ConsumerWidget {
  const TotalLeadsCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                const Text(
                  'Total Leads',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz,
                      color: DentsuColors.lightGrey,
                    ))
              ],
            ),
            SizedBox(
              height: 160,
              width: 160,
              child: CircularProgressIndicator(
                value: 0.33,
                strokeWidth: 10,
                valueColor:
                    AlwaysStoppedAnimation<Color>(DentsuColors.brightPurple),
                backgroundColor: DentsuColors.peach,
                strokeCap: StrokeCap.round,
              ),
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 5,
                  backgroundColor: DentsuColors.purple,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text.rich(TextSpan(
                    text: 'Contacted',
                    style: TextStyle(fontSize: 12),
                    children: [
                      TextSpan(
                          text: ' 1.7K',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ])),
                const Spacer(),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: DentsuColors.peach,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text.rich(TextSpan(
                    text: 'Total Leads',
                    style: TextStyle(fontSize: 12),
                    children: [
                      TextSpan(
                          text: ' 1000',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ])),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LeadsCard extends ConsumerWidget {
  const LeadsCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                const Text(
                  'Leads',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz,
                      color: DentsuColors.lightGrey,
                    ))
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 5,
                  backgroundColor: DentsuColors.brightPurple,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text('Accounts'),
                const Spacer(),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: DentsuColors.blueIsh,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text('Credit'),
                const Spacer(),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: DentsuColors.lime,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text('Insurance'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(height: 160, width: 160, child: LeadsChart()),
          ],
        ),
      ),
    );
  }
}

class LeadsChart extends ConsumerWidget {
  const LeadsChart({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 160,
      width: 160,
      child: LineChart(
        mainData(),
      ),
    );
  }

  LineChartData mainData() {
    var accounts = [
      3,
      2,
      1,
      4,
      5,
      6,
    ];
    var credit = [3, 4, 5, 2, 7, 5];

    var insurance = [1, 5, 6, 3, 2, 1];
    return LineChartData(
      gridData: const FlGridData(show: false),
      titlesData: const FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
            reservedSize: 30,
            interval: 1,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 1,
      maxX: 12,
      lineBarsData: [
        LineChartBarData(
          dotData: const FlDotData(show: false),
          color: DentsuColors.brightPurple,
          isCurved: false,
          spots: [
            ...accounts.map(
                (e) => FlSpot(accounts.indexOf(e).toDouble(), e.toDouble()))
          ],
          barWidth: 2,
          isStrokeCapRound: true,
        ),
        LineChartBarData(
          color: DentsuColors.blueIsh,
          isCurved: false,
          dotData: const FlDotData(show: false),
          spots: [
            ...credit
                .map((e) => FlSpot(credit.indexOf(e).toDouble(), e.toDouble()))
          ],
          barWidth: 2,
          isStrokeCapRound: true,
        ),
        LineChartBarData(
          color: DentsuColors.lime,
          dotData: const FlDotData(show: false),
          isCurved: false,
          spots: [
            ...insurance.map(
                (e) => FlSpot(insurance.indexOf(e).toDouble(), e.toDouble()))
          ],
          barWidth: 2,
          isStrokeCapRound: true,
        ),
      ],
    );
  }
}
