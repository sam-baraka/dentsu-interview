import 'package:dentsu_interview/UIs/common/grey_outlined_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Setup extends ConsumerWidget {
  const Setup({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: const [
        Text('Age Bracket', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        GreyOutlinedLabel(
            label: '18 to 30 Years', suffix: true, labelColor: Colors.black),
        SizedBox(height: 20),
        Text('Inpatient Cover Limit',
            style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        GreyOutlinedLabel(
            label: 'KES 500,000', suffix: true, labelColor: Colors.black),
        SizedBox(height: 20),
        Text('Spouse Covered', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        GreyOutlinedLabel(label: 'Yes', suffix: true, labelColor: Colors.black),
        SizedBox(height: 20),
        Text('How Many Children',
            style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        GreyOutlinedLabel(
            label: '6 children', suffix: true, labelColor: Colors.black),
        SizedBox(height: 20),
        Text('Cover Children', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        GreyOutlinedLabel(label: 'Yes', suffix: true, labelColor: Colors.black),
        SizedBox(height: 20),
        Text('Spouse Age Bracket',
            style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        GreyOutlinedLabel(
            label: '18 - 30 Years', suffix: true, labelColor: Colors.black),
        SizedBox(height: 20),
      ],
    );
  }
}
