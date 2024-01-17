import 'package:auto_route/auto_route.dart';
import 'package:dentsu_interview/models/dentsuquote.dart';
import 'package:dentsu_interview/providers/quotes_provider/quotes_provider.dart';
import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:dentsu_interview/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QuotesList extends ConsumerWidget {
  const QuotesList({super.key});

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
                AutoRouter.of(context).push(QuoteDetailRoute(quote: quote));
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
