import 'package:dentsu_interview/UIs/common/grey_outlined_label.dart';
import 'package:dentsu_interview/models/dentsuquote.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QuoteInformation extends ConsumerWidget {
  final DentsuQuote quote;
  const QuoteInformation({super.key, required this.quote});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: [
        const Text('First Name', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        GreyOutlinedLabel(
            label: quote.firstName ?? '', labelColor: Colors.black),
        const SizedBox(height: 20),
        const Text('Medium Name', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        GreyOutlinedLabel(
            label: quote.middleName ?? '', labelColor: Colors.black),
        const SizedBox(height: 20),
        const Text('Last Name', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        GreyOutlinedLabel(
            label: quote.lastName ?? '', labelColor: Colors.black),
        const SizedBox(height: 20),
        const Text('Originating Lead Source',
            style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        GreyOutlinedLabel(
            label: quote.leadSource ?? '', labelColor: Colors.black),
        const SizedBox(height: 20),
        const Text('Quote ID', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        GreyOutlinedLabel(label: quote.id ?? '', labelColor: Colors.black),
        const SizedBox(height: 20),
        const Text('Lead ID', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        const GreyOutlinedLabel(label: '0', labelColor: Colors.black),
        const SizedBox(height: 20),
        const Text('Source', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        const GreyOutlinedLabel(
          label: 'Agent Portal',
          labelColor: Colors.black,
        ),
        const SizedBox(height: 20),
        const Text('Capturing User', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        GreyOutlinedLabel(
            label: quote.createdBy ?? '', labelColor: Colors.black),
      ],
    );
  }
}
