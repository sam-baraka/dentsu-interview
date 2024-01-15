import 'package:auto_route/auto_route.dart';
import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:dentsu_interview/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LeadsList extends ConsumerWidget {
  const LeadsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(children: [
      ...leads.map((e) {
        return ListTile(
          onTap: () {
            AutoRouter.of(context).push(const LeadDetailRoute());
          },
          tileColor: leads.indexOf(e) % 2 == 0
              ? DentsuColors.lightGreyLight
              : Colors.white,
          title: Text(e),
          leading: Text(
            leads.indexOf(e).toString(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        );
      }),
      Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(const CircleBorder(
                    side: BorderSide(color: Colors.black12)))),
          ),
          const Spacer(),
          const Center(child: PageSelector()),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward_ios),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(const CircleBorder(
                    side: BorderSide(color: Colors.black12)))),
          ),
        ],
      )
    ]);
  }
}

class PageSelector extends StatelessWidget {
  const PageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black12),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Row(
        children: [
          ...[1, 2, 3, 4, 5].map((e) {
            return CircleAvatar(
                backgroundColor:
                    e == 1 ? DentsuColors.brightPurple : Colors.white,
                child: Text(
                  e.toString(),
                  style: TextStyle(color: e == 1 ? Colors.white : Colors.black),
                ));
          }),
        ],
      ),
    );
  }
}

var leads = [
  'Samuel Baraka',
  'John Rapha',
  'Shamma Bushuru',
  'Joy Nekesa',
  'John Simiyu',
  'Joshua Fadhili'
];
