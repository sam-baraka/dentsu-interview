import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DesktopLeads extends ConsumerWidget {
  const DesktopLeads({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        child: Center(
      child: Text('Desktop Leads'),
    ));
  }
}
