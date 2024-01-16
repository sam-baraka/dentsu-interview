import 'package:dentsu_interview/common/grey_outlined_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QuoteInformation extends ConsumerWidget {
  const QuoteInformation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: const [
        Text('First Name', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        GreyOutlinedLabel(label: 'Stacey', labelColor: Colors.black),
        SizedBox(height: 20),
        Text('Medium Name', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        GreyOutlinedLabel(label: 'Nyambura', labelColor: Colors.black),
        SizedBox(height: 20),
        Text('Last Name', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        GreyOutlinedLabel(label: 'Nyambura', labelColor: Colors.black),
        SizedBox(height: 20),
        Text('Originating Lead Source',
            style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        GreyOutlinedLabel(label: 'Sales Agent', labelColor: Colors.black),
        SizedBox(height: 20),
        Text('Quote ID', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        GreyOutlinedLabel(label: 'QUO-02091-V2C8D9', labelColor: Colors.black),
        SizedBox(height: 20),
        Text('Lead ID', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        GreyOutlinedLabel(label: '0', labelColor: Colors.black),
        SizedBox(height: 20),
        Text('Source', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        GreyOutlinedLabel(label: 'Agent Portal', labelColor: Colors.black,),
        SizedBox(height: 20),
        Text('Capturing User', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        GreyOutlinedLabel(label: 'Jeremy Kibor', labelColor: Colors.black),
      ],
    );
  }
}
