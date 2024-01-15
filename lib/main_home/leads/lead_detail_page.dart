import 'package:auto_route/auto_route.dart';
import 'package:dentsu_interview/main_home/app_bar/app_bar.dart';
import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class LeadDetailRoute extends ConsumerWidget {
  const LeadDetailRoute({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
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
                      children: const [
                        TextSpan(
                            text: 'LD-20321536-3125367',
                            style: TextStyle(color: Colors.black))
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
                  const Text('Lead Status', style: TextStyle(fontSize: 18)),
                  const Spacer(),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
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
                        Text('Contacted', style: TextStyle(color: Colors.white))
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
                              style: TextStyle(color: DentsuColors.purple),
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
                        onPressed: () {},
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
                            title: const Text('Joseph Kimeu Walter'),
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
                                    color: DentsuColors.lightGrey, width: 1),
                                borderRadius: BorderRadius.circular(10)),
                            title: Text(
                              'Lead Created',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: DentsuColors.greyHintColor),
                            ),
                            subtitle: Text(
                              '10 Jan 2021',
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
                                    color: DentsuColors.lightGrey, width: 1),
                                borderRadius: BorderRadius.circular(10)),
                            title: Text(
                              'Last Contacted',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: DentsuColors.greyHintColor),
                            ),
                            subtitle: Text(
                              '10 Jan 2021',
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
                                    color: DentsuColors.lightGrey, width: 1),
                                borderRadius: BorderRadius.circular(10)),
                            title: Text(
                              'Next Appointment',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: DentsuColors.greyHintColor),
                            ),
                            subtitle: Text(
                              '10 Jan 2021',
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
                          TabBar(tabs: [
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
                                    {'title': 'Lead Rating', 'subtitle': 'Hot'},
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
                                            color: DentsuColors.greyHintColor),
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
                              Column()
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
    );
  }
}
