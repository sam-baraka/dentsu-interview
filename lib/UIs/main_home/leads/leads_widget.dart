import 'package:dentsu_interview/UIs/main_home/leads/leads_list.dart';
import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:flutter/material.dart';

class LeadsWidget extends StatelessWidget {
  const LeadsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            const Text(
              'Leads',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
            ),
            const Spacer(),
            MaterialButton(
                color: DentsuColors.brightPurple,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {},
                child: const Text(
                  '+ New Lead',
                  style: TextStyle(color: Colors.white),
                )),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
          ],
        ),
        const Expanded(child: LeadsList())
      ],
    );
  }
}
