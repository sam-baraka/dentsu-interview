import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:dentsu_interview/UIs/desktop/main_dashboard/admin_app_bar/admin_app_bar.dart';
import 'package:dentsu_interview/UIs/main_home/app_bar/app_bar.dart';
import 'package:dentsu_interview/models/dentsuquote.dart';
import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:dentsu_interview/router/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

@RoutePage()
class LeadDetailPage extends ConsumerWidget {
  final DentsuQuote quote;
  final int index;
  final List<DentsuQuote> quotes;
  const LeadDetailPage(this.index, this.quotes,
      {super.key, required this.quote});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Platform.isAndroid || Platform.isIOS
        ? Scaffold(
            backgroundColor: DentsuColors.lightGreyLight,
            appBar: const AppAppBar(),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              AutoRouter.of(context).pop();
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: DentsuColors.brightPurple,
                            )),
                        Text.rich(TextSpan(
                            text: 'Back to all leads / ',
                            style: TextStyle(
                                fontSize: 12, color: DentsuColors.brightPurple),
                            children: [
                              TextSpan(
                                  text: 'LD-${quote.id}}',
                                  style: const TextStyle(color: Colors.black))
                            ]))
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Row(children: [
                        const Text('Lead Status',
                            style: TextStyle(fontSize: 18)),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 10),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                DentsuColors.blueIsh,
                                DentsuColors.brightPurple
                              ]),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Row(
                            children: [
                              Icon(CupertinoIcons.check_mark_circled,
                                  color: Colors.white),
                              Text('Contacted',
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                        )
                      ]),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        IntrinsicWidth(
                          child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: DentsuColors.purple),
                                  borderRadius: BorderRadius.circular(20)),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.close,
                                    color: DentsuColors.brightPurple,
                                  ),
                                  const Spacer(),
                                  Text(
                                    'Cancel Lead',
                                    style:
                                        TextStyle(color: DentsuColors.purple),
                                  ),
                                ],
                              )),
                        ),
                        const Spacer(),
                        IntrinsicWidth(
                          child: MaterialButton(
                              color: DentsuColors.brightPurple,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              onPressed: () {
                                AutoRouter.of(context).push(LeadDetailRoute(
                                    index: index + 1,
                                    quotes: quotes,
                                    quote: quotes[index + 1]));
                              },
                              child: const Row(
                                children: [
                                  Text(
                                    'Next',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    IntrinsicHeight(
                      child: Card(
                          color: Colors.white,
                          elevation: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                ListTile(
                                  leading: const CircleAvatar(
                                    radius: 15,
                                    backgroundImage: NetworkImage(
                                        'https://media.istockphoto.com/id/1410538853/photo/young-man-in-the-public-park.webp?b=1&s=170667a&w=0&k=20&c=pGdjFVdK-_BhTa6PMy5VNcXdbxVNngzg-OPzMfJKrG8='),
                                  ),
                                  title: Text(quote.firstName! +
                                      ' ' +
                                      quote.lastName! +
                                      ' ' +
                                      quote.middleName!),
                                  subtitle: Text(
                                    'Nairobi, Kenya',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: DentsuColors.greyHintColor),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                ListTile(
                                  tileColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: DentsuColors.lightGrey,
                                          width: 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  title: Text(
                                    'Lead Created',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: DentsuColors.greyHintColor),
                                  ),
                                  subtitle: Text(
                                    DateFormat.yMMMMd().format(
                                        DateTime.parse(quote.createdAt!)),
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: DentsuColors.greyHintColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                ListTile(
                                  tileColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: DentsuColors.lightGrey,
                                          width: 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  title: Text(
                                    'Last Contacted',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: DentsuColors.greyHintColor),
                                  ),
                                  subtitle: Text(
                                    DateFormat.yMMMMd().format(
                                        DateTime.parse(quote.createdAt!)),
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: DentsuColors.greyHintColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                ListTile(
                                  tileColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: DentsuColors.lightGrey,
                                          width: 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  title: Text(
                                    'Next Appointment',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: DentsuColors.greyHintColor),
                                  ),
                                  subtitle: Text(
                                    DateFormat.yMMMMd().format(DateTime.now()
                                        .add(const Duration(
                                            days: 2, hours: 2, minutes: 30))),
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: DentsuColors.greyHintColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 300,
                      child: Card(
                        elevation: 0,
                        color: Colors.white,
                        child: DefaultTabController(
                            length: 2,
                            child: Column(
                              children: [
                                const TabBar(tabs: [
                                  Tab(
                                    text: 'Lead Details',
                                  ),
                                  Tab(
                                    text: 'Assigned Lead',
                                  )
                                ]),
                                Expanded(
                                  child: TabBarView(children: [
                                    Column(
                                      children: [
                                        ...[
                                          {
                                            'title': 'Lead Status',
                                            'subtitle': 'Contacted'
                                          },
                                          {
                                            'title': 'Lead Rating',
                                            'subtitle': 'Hot'
                                          },
                                          {
                                            'title': 'Lead Owner',
                                            'subtitle': 'Joseph Kimeu Walter'
                                          },
                                        ].map((e) {
                                          return ListTile(
                                            tileColor: Colors.white,
                                            title: Text(
                                              e['title']!,
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: DentsuColors
                                                      .greyHintColor),
                                            ),
                                            subtitle: Text(
                                              e['subtitle']!,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: DentsuColors
                                                      .greyHintColor,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          );
                                        })
                                      ],
                                    ),
                                    const Column()
                                  ]),
                                )
                              ],
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        :

        /// Desktop view
        Scaffold(
            appBar: const AdminAppBar(),
            body: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          AutoRouter.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: DentsuColors.brightPurple,
                        )),
                    Text.rich(TextSpan(
                        text: 'Back to all leads / ',
                        style: TextStyle(
                            fontSize: 12, color: DentsuColors.brightPurple),
                        children: const [
                          TextSpan(
                              text: 'LD-20321536-3125367',
                              style: TextStyle(color: Colors.black))
                        ]))
                  ],
                ),
                Card(
                  elevation: 0,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const Text(
                          'Lead Status',
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: DentsuColors.brightPurple,
                              child: const Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 12,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 4,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    DentsuColors.blueIsh,
                                    DentsuColors.brightPurple
                                  ]),
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: DentsuColors.brightPurple,
                              child: const Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 12,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 4,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    DentsuColors.blueIsh,
                                    DentsuColors.brightPurple
                                  ]),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      color: DentsuColors.lightGreyLight,
                                      spreadRadius: 5)
                                ],
                              ),
                              child: const CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 12,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 4,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(colors: []),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      color: DentsuColors.lightGreyLight,
                                      spreadRadius: 5)
                                ],
                              ),
                              child: const CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 12,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 4,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(colors: []),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      color: DentsuColors.lightGreyLight,
                                      spreadRadius: 5)
                                ],
                              ),
                              child: const CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 12,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 4,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(colors: []),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: DentsuColors.purple, width: 1),
                                  borderRadius: BorderRadius.circular(20)),
                              onPressed: () => AutoRouter.of(context).pop(),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_back,
                                    color: DentsuColors.brightPurple,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Previous',
                                    style: TextStyle(
                                        color: DentsuColors.brightPurple),
                                  )
                                ],
                              ),
                            ),
                            const Spacer(),
                            MaterialButton(
                              color: DentsuColors.brightPurple,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: DentsuColors.purple, width: 1),
                                  borderRadius: BorderRadius.circular(20)),
                              onPressed: () => AutoRouter.of(context).pop(),
                              child: const Row(
                                children: [
                                  Text(
                                    'Next',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 300,
                  child: Card(
                    elevation: 0,
                    color: Colors.white,
                    child: DefaultTabController(
                        length: 4,
                        child: Column(
                          children: [
                            const TabBar(tabs: [
                              Tab(
                                text: 'Customer Details',
                              ),
                              Tab(
                                text: 'Lead Details',
                              ),
                              Tab(
                                text: 'Assigned Lead',
                              ),
                              Tab(
                                text: 'Follow Up',
                              ),
                            ]),
                            Expanded(
                              child: TabBarView(children: [
                                Column(
                                  children: [
                                    ...[
                                      {
                                        'title': 'Lead Status',
                                        'subtitle': 'Contacted'
                                      },
                                      {
                                        'title': 'Lead Rating',
                                        'subtitle': 'Hot'
                                      },
                                      {
                                        'title': 'Lead Owner',
                                        'subtitle': 'Joseph Kimeu Walter'
                                      },
                                    ].map((e) {
                                      return ListTile(
                                        tileColor: Colors.white,
                                        title: Text(
                                          e['title']!,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color:
                                                  DentsuColors.greyHintColor),
                                        ),
                                        subtitle: Text(
                                          e['subtitle']!,
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: DentsuColors.greyHintColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      );
                                    })
                                  ],
                                ),
                                const Column(),
                                const Column(),
                                const Column(),
                              ]),
                            )
                          ],
                        )),
                  ),
                )
              ],
            ),
          );
  }
}
