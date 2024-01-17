import 'package:dentsu_interview/UIs/common/grey_drop_down.dart';
import 'package:dentsu_interview/UIs/common/grey_text_field.dart';
import 'package:dentsu_interview/UIs/main_home/leads/leads_list.dart';
import 'package:dentsu_interview/providers/quotes_provider/quotes_provider.dart';
import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DesktopLeads extends ConsumerWidget {
  const DesktopLeads({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Leads',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              MaterialButton(
                color: DentsuColors.brightPurple,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(
                      Icons.link,
                      color: Colors.white,
                    ),
                    Text(
                      'Export',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Card(
            elevation: 0,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: GreyTextField(
                              backgroundColor: Colors.white,
                              onChanged: (val) {
                                ref
                                    .read(getQuotesProvider.notifier)
                                    .filterQuotes(name: val);
                              },
                              hintText: 'Customer Name',
                              name: 'name')),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: GreyTextField(
                              backgroundColor: Colors.white,
                              onChanged: (val) {
                                ref
                                    .read(getQuotesProvider.notifier)
                                    .filterQuotes(email: val);
                              },
                              hintText: 'Customer Email',
                              name: 'email')),
                      const SizedBox(
                        width: 10,
                      ),

                      Expanded(
                          child: GreyDropDownField(
                        onChanged: (val) {
                          ref.read(getQuotesProvider.notifier).filterQuotes();
                        },
                        hintText: 'Product',
                        name: 'name',
                        items: const [
                          DropdownMenuItem(child: Text('Mortgage'))
                        ],
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: GreyDropDownField(
                        hintText: 'Status',
                        onChanged: (val) {
                          ref.read(getQuotesProvider.notifier).filterQuotes();
                        },
                        name: 'name',
                        items: const [DropdownMenuItem(child: Text('Status'))],
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: GreyDropDownField(
                        hintText: 'Date',
                        onChanged: (val) {
                          ref.read(getQuotesProvider.notifier).filterQuotes();
                        },
                        name: 'name',
                        items: const [
                          DropdownMenuItem(child: Text('This Month'))
                        ],
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      // MOre filter options button
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.filter_alt_outlined,
                            color: DentsuColors.brightPurple,
                          )),
                      Text(
                        'More Filter Options',
                        style: TextStyle(
                            color: DentsuColors.brightPurple,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  LeadsListDesktop()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
