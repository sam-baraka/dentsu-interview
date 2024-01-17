import 'package:dentsu_interview/UIs/main_home/home_widgets/top_tiles.dart';
import 'package:dentsu_interview/UIs/main_home/leads/leads_list.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Dashboard',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
          ),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              children: const [
                SizedBox(width: 280, child: TotalLeadsCard()),
                SizedBox(width: 280, child: LeadsCard()),
                SizedBox(width: 280, child: RequestsPieChart()),
                SizedBox(width: 280, child: TopProductsCard()),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'New Leads',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
          const SizedBox(
            height: 10,
          ),
          const LeadsList()
        ],
      ),
    );
  }
}
