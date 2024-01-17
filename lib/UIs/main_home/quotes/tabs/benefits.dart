import 'package:dentsu_interview/UIs/common/grey_outlined_label.dart';
import 'package:dentsu_interview/UIs/main_home/bottom_navigation/bottom_navigation_provider.dart';
import 'package:dentsu_interview/models/dentsuquote.dart';
import 'package:dentsu_interview/providers/mpesa_payment/mpesa_payment_provider.dart';

import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Benefits extends ConsumerWidget {
  final DentsuQuote quote;
  const Benefits({super.key, required this.quote});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(mpesaPaymentNotifierProvider, (previous, next) {
      next.maybeWhen(
          paymentRequestSent: (data) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Payment request sent'),
            ));
          },
          success: () {
            ref
                .read(bottomNavigationStateNotifierProvider.notifier)
                .changeIndex(0);
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Payment successful'),
            ));
          },
          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(message),
            ));
          },
          orElse: () {});
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Inpatient Cover Limit',
            style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        GreyOutlinedLabel(
            label: '${quote.inPatientCoverLimit ?? ''}',
            labelColor: Colors.black),
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
                      child: ListView(
                    children: [
                      /// dental, inpatient, lastExpense, maternity, noCoPay, optical, outpatient, repatriate
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Dental',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ),
                          Switch(
                              value: quote.dental ?? false,
                              onChanged: (value) {},
                              activeColor: DentsuColors.brightPurple)
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Inpatient',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ),
                          Switch(
                              value: quote.inpatient ?? false,
                              onChanged: (value) {},
                              activeColor: DentsuColors.brightPurple)
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Last Expense',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ),
                          Switch(
                              value: quote.lastExpense ?? false,
                              onChanged: (value) {},
                              activeColor: DentsuColors.brightPurple)
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Maternity',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ),
                          Switch(
                              value: quote.maternity ?? false,
                              onChanged: (value) {},
                              activeColor: DentsuColors.brightPurple)
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'No Co-Pay',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ),
                          Switch(
                              value: quote.noCoPay ?? false,
                              onChanged: (value) {},
                              activeColor: DentsuColors.brightPurple)
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Optical',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ),
                          Switch(
                              value: quote.optical ?? false,
                              onChanged: (value) {},
                              activeColor: DentsuColors.brightPurple)
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Outpatient',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ),
                          Switch(
                              value: quote.outpatient ?? false,
                              onChanged: (value) {},
                              activeColor: DentsuColors.brightPurple)
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Repatriate',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ),
                          Switch(
                              value: quote.repatriate ?? false,
                              onChanged: (value) {},
                              activeColor: DentsuColors.brightPurple)
                        ],
                      ),
                    ],
                  ))
                  // Expanded(
                  //     child: ListView.separated(
                  //         itemBuilder: (context, index) {
                  //           return Row(children: [
                  //             Expanded(
                  //               child: Text(
                  //                 options[index],
                  //                 style: const TextStyle(
                  //                     fontWeight: FontWeight.bold,
                  //                     fontSize: 12),
                  //               ),
                  //             ),
                  //             Switch(
                  //                 value: false,
                  //                 onChanged: (value) {},
                  //                 activeColor: DentsuColors.brightPurple)
                  //           ]);
                  //         },
                  //         separatorBuilder: (context, inxex) {
                  //           return const Divider();
                  //         },
                  //         itemCount: options.length))
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
                ),
                ref.watch(mpesaPaymentNotifierProvider).maybeWhen(
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      paymentRequestSent: (data) => OutlinedButton(
                        onPressed: () {
                          ref
                              .read(mpesaPaymentNotifierProvider.notifier)
                              .confirmPayment(
                                  checkoutRequestID: data['CheckoutRequestID'],
                                  merchantRequestId: data['MerchantRequestID']);
                        },
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(color: DentsuColors.brightPurple)),
                        child: Text(
                          'Confirm Payment',
                          style: TextStyle(color: DentsuColors.brightPurple),
                        ),
                      ),
                      orElse: () {
                        return OutlinedButton(
                          onPressed: () {
                            ref
                                .read(mpesaPaymentNotifierProvider.notifier)
                                .initiatePayment(
                                    phone: '254797301429',
                                    identifier: '1234567890');
                          },
                          style: OutlinedButton.styleFrom(
                              side:
                                  BorderSide(color: DentsuColors.brightPurple)),
                          child: Text(
                            'Buy Now',
                            style: TextStyle(color: DentsuColors.brightPurple),
                          ),
                        );
                      },
                    ),
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
