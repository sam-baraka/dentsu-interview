import 'package:dentsu_interview/main_home/leads/leads_list.dart';
import 'package:dentsu_interview/main_home/quotes/quotes_list.dart';
import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QuotesPage extends ConsumerWidget {
  const QuotesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            const Text(
              'Quotes',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
            ),
            const Spacer(),
            MaterialButton(
                color: DentsuColors.brightPurple,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {},
                child: const Text(
                  '+ New quote',
                  style: TextStyle(color: Colors.white),
                )),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
          ],
        ),
        const Expanded(child: QuotesList())
      ],
    );
  }
}
