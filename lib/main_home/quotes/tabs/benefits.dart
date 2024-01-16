import 'package:dentsu_interview/common/grey_outlined_label.dart';
import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Benefits extends ConsumerWidget {
  const Benefits({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Inpatient Cover Limit',
            style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        const GreyOutlinedLabel(label: 'KES 500,000', labelColor: Colors.black),
        const SizedBox(height: 20),
        Expanded(
          child: Card(
            color: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.grey.shade300)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text('Benefits',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Expanded(
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return Row(children: [
                              Expanded(
                                child: Text(
                                  options[index],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                              Switch(
                                  value: false,
                                  onChanged: (value) {},
                                  activeColor: DentsuColors.brightPurple)
                            ]);
                          },
                          separatorBuilder: (context, inxex) {
                            return const Divider();
                          },
                          itemCount: options.length))
                ],
              ),
            ),
          ),
        ),
        Card(
          elevation: 0,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text('Premium Summary',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const Spacer(),
                    Icon(Icons.question_mark_rounded,
                        color: DentsuColors.brightPurple)
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text('Total',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text('KES 131,435',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                RadioListTile<String>(
                  value: 'Yes',
                  groupValue: 'Yes',
                  onChanged: (val) {},
                  title: const Text('Mpesa Paybill'),
                  secondary: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/M-PESA_LOGO-01.svg/1200px-M-PESA_LOGO-01.svg.png'),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        )
      ],
    );
  }
}

var options = [
  'Inpatient',
  'Outpatient',
  'Maternity',
  'Dental',
  'Optical',
  'Last Expense',
  'Personal Accident',
  'Repatriation',
  'Funeral',
  'Critical Illness'
];
