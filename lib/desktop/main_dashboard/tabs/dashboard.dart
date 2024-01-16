import 'package:dentsu_interview/common/grey_drop_down.dart';
import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DesktopDashboard extends ConsumerWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/banner.png'),
            const SizedBox(height: 20),
            const Row(
              children: [
                Text('Overal Lead Performance',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
                Spacer(),
                SizedBox(
                  width: 200,
                  child: GreyDropDownField(
                      hintText: 'Duration',
                      items: [
                        DropdownMenuItem<dynamic>(
                          value: 'value',
                          child: Text('Last 3 Months'),
                        )
                      ],
                      name: 'name'),
                )
              ],
            ),
            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Card(
                        elevation: 0,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                const Text(
                                  'Total Leads Over',
                                  style: TextStyle(fontSize: 18),
                                ),
                                const SizedBox(
                                  width: 200,
                                  child: GreyDropDownField(
                                      hintText: 'Duration',
                                      items: [
                                        DropdownMenuItem<dynamic>(
                                          value: 'value',
                                          child: Text('Last 3 Months'),
                                        )
                                      ],
                                      name: 'name'),
                                ),
                                const CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 10,
                                ),
                                const Text(
                                  'Total Leads',
                                  style: TextStyle(fontSize: 18),
                                ),
                                const CircleAvatar(
                                  backgroundColor: Colors.green,
                                  radius: 10,
                                ),
                                const Text(
                                  'Converted Leads',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Switch(value: true, onChanged: (val) {}),
                                const Text(
                                  'Converted Leads',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            AdminLeadsChart(),
                            Container(
                                height: 250,
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    color: DentsuColors.brightPurple,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30))),
                                child: Column(
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Leads Analysis',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                        Spacer(),
                                        SizedBox(
                                          width: 200,
                                          child: GreyDropDownField(
                                              hintText: 'Duration',
                                              items: [
                                                DropdownMenuItem<dynamic>(
                                                  value: 'value',
                                                  child: Text('Last 3 Months'),
                                                )
                                              ],
                                              name: 'name'),
                                        ),
                                      ],
                                    ),
                                    Row(children: [
                                      ...[
                                        1,
                                        2,
                                        3,
                                        4,
                                      ].map((e) => const Expanded(
                                          child: AnalysisTile())),
                                    ])
                                  ],
                                ))
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const TopProductsTileCard(),
                          Card(
                            color: Colors.white,
                            elevation: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        'Turn Around Time',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Spacer(),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.more_horiz,
                                            color: DentsuColors.greyHintColor,
                                          )),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        '2.43 (Days)',
                                        style: TextStyle(
                                            fontSize: 32,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                      Spacer(),
                                      Text(
                                        '^ +45%',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 32,
                                            color: Colors.green),
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    'Was 8.61 (days) 31 days ago',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Text('Prediction Analysys',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
                Spacer(),
                SizedBox(
                  width: 200,
                  child: GreyDropDownField(
                      hintText: 'Duration',
                      items: [
                        DropdownMenuItem<dynamic>(
                          value: 'value',
                          child: Text('Last 3 Months'),
                        )
                      ],
                      name: 'name'),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                ...[1, 2, 3, 4, 5]
                    .map((e) => const Expanded(child: PredictionTile()))
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Text('Campaign Activity',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
                Spacer(),
                SizedBox(
                  width: 200,
                  child: GreyDropDownField(
                      hintText: 'Duration',
                      items: [
                        DropdownMenuItem<dynamic>(
                          value: 'value',
                          child: Text('Last 3 Months'),
                        )
                      ],
                      name: 'name'),
                )
              ],
            ),
            const SizedBox(height: 20),
            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                      child: SizedBox(
                    width: 300,
                    child: Card(
                      color: Colors.white,
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Top Campaigns',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Text(
                                  'Mothers Day',
                                  style: TextStyle(
                                      color: DentsuColors.brightPurple),
                                ),
                                const Spacer(),
                                Text(
                                  '19,385',
                                  style: TextStyle(
                                      color: DentsuColors.brightPurple),
                                ),
                              ],
                            ),
                            LinearProgressIndicator(
                              value: 0.5,
                              minHeight: 16,
                              borderRadius: BorderRadius.circular(10),
                              color: DentsuColors.brightPurple,
                              backgroundColor:
                                  DentsuColors.brightPurple.withOpacity(0.5),
                            ),
                            const SizedBox(height: 20),
                            const Row(
                              children: [
                                Text(
                                  'Fathers Day',
                                  style: TextStyle(color: Colors.indigo),
                                ),
                                Spacer(),
                                Text(
                                  '19,385',
                                  style: TextStyle(color: Colors.indigo),
                                ),
                              ],
                            ),
                            LinearProgressIndicator(
                              value: 0.5,
                              minHeight: 16,
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.indigo,
                              backgroundColor: Colors.indigo.withOpacity(0.5),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Row(
                              children: [
                                Text(
                                  'Pre Paid Card',
                                  style: TextStyle(color: Colors.green),
                                ),
                                Spacer(),
                                Text(
                                  '19,385',
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                            LinearProgressIndicator(
                              value: 0.5,
                              minHeight: 16,
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green,
                              backgroundColor: Colors.green.withOpacity(0.5),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Row(
                              children: [
                                Text(
                                  'Mortgage Campaign',
                                  style: TextStyle(color: Colors.orange),
                                ),
                                Spacer(),
                                Text(
                                  '19,385',
                                  style: TextStyle(color: Colors.orange),
                                ),
                              ],
                            ),
                            LinearProgressIndicator(
                              value: 0.5,
                              minHeight: 16,
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.orange,
                              backgroundColor: Colors.orange.withOpacity(0.5),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
                  ...[
                    1,
                    2,
                  ].map((e) => const Expanded(child: CampaignStatsTile()))
                ],
              ),
            ),
            const Row(
              children: [
                Text('Overall Channel Performance',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
                Spacer(),
                SizedBox(
                  width: 200,
                  child: GreyDropDownField(
                      hintText: 'Duration',
                      items: [
                        DropdownMenuItem<dynamic>(
                          value: 'value',
                          child: Text('Last 3 Months'),
                        )
                      ],
                      name: 'name'),
                )
              ],
            ),
            const SizedBox(height: 20),
            const OveralChannelsPerformance(),
            const SizedBox(height: 20),
            const Text('Customer Profile',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
            const SizedBox(height: 20),
            const IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(child: CustomerProfileTile()),
                  SizedBox(width: 20),
                  Expanded(child: CustomerProfileTile()),
                  SizedBox(width: 20),
                  Expanded(child: CustomerProfileTile()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopProductsTileCard extends ConsumerWidget {
  const TopProductsTileCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Total Products',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz,
                      color: DentsuColors.greyHintColor,
                    )),
              ],
            ),
            CircleAvatar(
              backgroundColor: DentsuColors.brightPurple,
              radius: 110,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 100,
                child: CircleAvatar(
                    backgroundColor: DentsuColors.blueIsh,
                    radius: 90,
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 80,
                      child: CircleAvatar(
                          radius: 70,
                          backgroundColor: Colors.green,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 60,
                          )),
                    )),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Critical Illness',
                  style: TextStyle(color: DentsuColors.brightPurple),
                ),
                const Spacer(),
                Text(
                  '19,385',
                  style: TextStyle(color: DentsuColors.brightPurple),
                ),
              ],
            ),
            LinearProgressIndicator(
              value: 0.5,
              minHeight: 16,
              borderRadius: BorderRadius.circular(10),
              color: DentsuColors.brightPurple,
              backgroundColor: DentsuColors.brightPurple.withOpacity(0.5),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Mortgage',
                  style: TextStyle(color: DentsuColors.blueIsh),
                ),
                const Spacer(),
                Text(
                  '19,385',
                  style: TextStyle(color: DentsuColors.blueIsh),
                ),
              ],
            ),
            LinearProgressIndicator(
              value: 0.5,
              minHeight: 16,
              borderRadius: BorderRadius.circular(10),
              color: DentsuColors.blueIsh,
              backgroundColor: DentsuColors.blueIsh.withOpacity(0.5),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Text(
                  'Investments',
                  style: TextStyle(color: Colors.orange),
                ),
                Spacer(),
                Text(
                  '19,385',
                  style: TextStyle(color: Colors.orange),
                ),
              ],
            ),
            LinearProgressIndicator(
              value: 0.5,
              minHeight: 16,
              borderRadius: BorderRadius.circular(10),
              color: Colors.orange,
              backgroundColor: Colors.orange.withOpacity(0.5),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Critical Illness',
                  style: TextStyle(color: DentsuColors.brightPurple),
                ),
                const Spacer(),
                Text(
                  '19,385',
                  style: TextStyle(color: DentsuColors.brightPurple),
                ),
              ],
            ),
            LinearProgressIndicator(
              value: 0.5,
              minHeight: 16,
              borderRadius: BorderRadius.circular(10),
              color: DentsuColors.brightPurple,
              backgroundColor: DentsuColors.brightPurple.withOpacity(0.5),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class CustomerProfileTile extends StatelessWidget {
  const CustomerProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Total Profiles',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz,
                      color: DentsuColors.greyHintColor,
                    )),
              ],
            ),
            const Text(
              '8006',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              '20.43% decline compared to 31 days ago',
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

class CampaignStatsTile extends ConsumerWidget {
  const CampaignStatsTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
        elevation: 0,
        color: DentsuColors.brightPurple,
        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text.rich(TextSpan(
                  text: 'Total Emails Sent',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                  children: [
                    TextSpan(
                        text: ' ^ +45%',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                        ))
                  ])),
              Text('1,300,000',
                  style: TextStyle(fontSize: 28, color: Colors.white)),
              SizedBox(height: 20),
              Text.rich(TextSpan(
                  text: 'Total Emails Sent',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                  children: [
                    TextSpan(
                        text: ' ^ +45%',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                        ))
                  ])),
              Text('1,300,000',
                  style: TextStyle(fontSize: 28, color: Colors.white)),
              SizedBox(height: 20),
              Text(
                '20.43% decline compared to 31 days ago',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
              SizedBox(height: 20),
            ],
          ),
        ));
  }
}

class AnalysisTile extends StatelessWidget {
  const AnalysisTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text.rich(TextSpan(
            text: 'Total Leads ',
            style: TextStyle(fontSize: 18, color: Colors.white),
            children: [
              TextSpan(
                  text: ' ^ +45%',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 14,
                  ))
            ])),
        SizedBox(height: 20),
        Text('1,300,000', style: TextStyle(fontSize: 28, color: Colors.white)),
        SizedBox(height: 20),
        Text(
          '20.43% decline compared to 31 days ago',
          style: TextStyle(fontSize: 12, color: Colors.white),
        )
      ],
    );
  }
}

class PredictionTile extends StatelessWidget {
  const PredictionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                'January',
                style:
                    TextStyle(fontSize: 12, color: DentsuColors.greyHintColor),
              ),
              subtitle: const Text(
                'Conversion Rate',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    color: DentsuColors.greyHintColor,
                  )),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Column(
                  children: [
                    Text('+45% ^',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 32,
                        )),
                    Text('5% Increase \ncompared to last month',
                        style: TextStyle(
                          fontSize: 12,
                        )),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Text('8006',
                        style: TextStyle(
                          fontSize: 32,
                        )),
                    Text('Hot Leads',
                        style: TextStyle(
                          fontSize: 12,
                        )),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AdminLeadsChart extends ConsumerWidget {
  AdminLeadsChart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 400,
      // width: 160,
      child: LineChart(
        mainData(),
      ),
    );
  }

  final totalLeads = [1, 2, 3, 4, 5, 6, 5, 3, 2];
  final convertedLeads = [8, 3, 5, 2, 6, 2, 5, 2, 4];
  final dates = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug'];

  LineChartData mainData() {
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
            showTitles: true,
            reservedSize: 30,
            interval: 1,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
          ),
        ),
      ),
      maxY: 9,
      borderData: FlBorderData(
        show: false,
      ),
      lineBarsData: [
        LineChartBarData(
          dotData: const FlDotData(show: false),
          color: DentsuColors.brightPurple,
          isCurved: true,
          spots: List.generate(
              totalLeads.length,
              (index) =>
                  FlSpot(index.toDouble(), totalLeads[index].toDouble())),
          barWidth: 2,
          isStrokeCapRound: true,
        ),
        LineChartBarData(
          dotData: const FlDotData(show: false),
          color: Colors.green,
          isCurved: true,
          spots: List.generate(
              convertedLeads.length,
              (index) =>
                  FlSpot(index.toDouble(), convertedLeads[index].toDouble())),
          barWidth: 2,
          isStrokeCapRound: true,
        ),
      ],
    );
  }
}

class PerformanceChart extends StatelessWidget {
  PerformanceChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 400,
      // width: 160,
      child: LineChart(
        mainData(),
      ),
    );
  }

  final totalLeads = [1, 2, 3, 4, 5, 6, 5, 3, 2];
  final convertedLeads = [8, 3, 5, 2, 6, 2, 5, 2, 4];
  final dates = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug'];

  LineChartData mainData() {
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
            showTitles: true,
            reservedSize: 30,
            interval: 1,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
          ),
        ),
      ),
      maxY: 9,
      borderData: FlBorderData(
        show: false,
      ),
      lineBarsData: [
        LineChartBarData(
          dotData: const FlDotData(show: false),
          color: DentsuColors.brightPurple,
          isCurved: true,
          spots: List.generate(
              totalLeads.length,
              (index) =>
                  FlSpot(index.toDouble(), totalLeads[index].toDouble())),
          barWidth: 2,
          isStrokeCapRound: true,
        ),
        LineChartBarData(
          dotData: const FlDotData(show: false),
          color: Colors.green,
          isCurved: true,
          spots: List.generate(
              convertedLeads.length,
              (index) =>
                  FlSpot(index.toDouble(), convertedLeads[index].toDouble())),
          barWidth: 2,
          isStrokeCapRound: true,
        ),
      ],
    );
  }
}

class OveralChannelsPerformance extends StatelessWidget {
  const OveralChannelsPerformance({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                const Text('Total Emails Over Time'),
                const SizedBox(
                  width: 20,
                ),
                const SizedBox(
                  width: 200,
                  child: GreyDropDownField(
                      hintText: 'Duration',
                      items: [
                        DropdownMenuItem<dynamic>(
                          value: 'value',
                          child: Text('Last 3 Months'),
                        )
                      ],
                      name: 'name'),
                ),
                const Spacer(),
                CircleAvatar(
                  backgroundColor: DentsuColors.peach,
                  radius: 10,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Emails Sent',
                  style: TextStyle(),
                ),
                const SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: DentsuColors.peach,
                  radius: 10,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Emails Delivered',
                  style: TextStyle(),
                ),
                const SizedBox(
                  width: 10,
                ),
                const CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 10,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Emails Opened',
                  style: TextStyle(),
                ),
              ],
            ),
            PerformanceChart()
          ],
        ),
      ),
    );
  }
}
