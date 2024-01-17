import 'package:auto_route/auto_route.dart';
import 'package:dentsu_interview/models/dentsuquote.dart';
import 'package:dentsu_interview/providers/quotes_provider/quotes_provider.dart';
import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:dentsu_interview/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LeadsList extends ConsumerWidget {
  const LeadsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(getQuotesProvider).maybeWhen(
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
      orElse: () {
        return Center(
            child: TextButton(
          onPressed: () {
            AutoRouter.of(context).push(AddQuoteRoute());
          },
          child: const Text('Create Quote'),
        ));
      },
      success: (leads) {
        return Column(children: [
          ...leads.map((e) {
            DentsuQuote quote = e;
            return ListTile(
              onTap: () {
                AutoRouter.of(context).push(LeadDetailRoute(
                    quote: quote, quotes: leads, index: leads.indexOf(e)));
              },
              tileColor: leads.indexOf(e) % 2 == 0
                  ? DentsuColors.lightGreyLight
                  : Colors.white,
              title: Text('${quote.firstName!} ${quote.lastName!}'),
              leading: Text(
                leads.indexOf(e).toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            );
          }),
        ]);
      },
    );
  }
}

class LeadsListDesktop extends ConsumerWidget {
  const LeadsListDesktop({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(getQuotesProvider).maybeWhen(
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
      orElse: () {
        return const Center(
            child: Text(
          'No Leads Found',
        ));
      },
      success: (leads) {
        return Column(children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: const Row(
              children: [
                Expanded(
                    child: Text(
                  'Customer Name',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                )),
                Expanded(
                    child: Text(
                  'Product',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                )),
                Expanded(
                    child: Text(
                  'Email',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                )),
                Expanded(
                    child: Text(
                  'Status',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                )),
                Expanded(
                    child: Text(
                  'Actions',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                )),
              ],
            ),
          ),
          ...leads.map((DentsuQuote e) {
            return InkWell(
              onTap: () {
                // AutoRouter.of(context).push(const LeadDetailRoute());
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: leads.indexOf(e) % 2 == 0
                      ? DentsuColors.lightGreyLight
                      : Colors.white,
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      '${e.firstName!} ${e.middleName!} ${e.lastName!}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    )),
                    const Expanded(
                        child: Text(
                      'Product',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    )),
                    Expanded(
                        child: Text(
                      e.email!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    )),
                    const Expanded(
                        child: Text(
                      'Active',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    )),
                    Expanded(
                        child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                    )),
                  ],
                ),
              ),
            );
          }),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text('Showing ${leads.length} of ${leads.length}  '),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(const CircleBorder(
                        side: BorderSide(color: Colors.black12)))),
              ),
              const SizedBox(
                width: 10,
              ),
              const Center(child: PageSelector()),
              const SizedBox(
                width: 10,
              ),
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
      },
    );
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
