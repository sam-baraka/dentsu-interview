import 'package:dentsu_interview/UIs/common/grey_outlined_label.dart';
import 'package:dentsu_interview/models/dentsuquote.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Setup extends ConsumerWidget {
  final DentsuQuote quote;
  const Setup({super.key, required this.quote});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children:  [
        Text('Age Bracket', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        GreyOutlinedLabel(
            label: quote.ageBracket??'', suffix: true, labelColor: Colors.black),
        SizedBox(height: 20),
        Text('Inpatient Cover Limit',
            style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        GreyOutlinedLabel(
            label: quote.inPatientCoverLimit??'', suffix: true, labelColor: Colors.black),
        SizedBox(height: 20),
        Text('Spouse Covered', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        GreyOutlinedLabel(label: 'Yes', suffix: true, labelColor: Colors.black),
        SizedBox(height: 20),
        Text('How Many Children',
            style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        GreyOutlinedLabel(
            label: '${quote.numberOfChildren} children', suffix: true, labelColor: Colors.black),
        SizedBox(height: 20),
        const Text('Cover Children', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        GreyOutlinedLabel(label: 'Yes', suffix: true, labelColor: Colors.black),
        SizedBox(height: 20),
        Text('Spouse Age Bracket',
            style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        GreyOutlinedLabel(
            label: quote.spouseAgeBracket??'', suffix: true, labelColor: Colors.black),
        SizedBox(height: 20),
      ],
    );
  }
}
