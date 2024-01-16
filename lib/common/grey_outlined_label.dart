import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GreyOutlinedLabel extends ConsumerWidget {
  final String label;
  final Color labelColor;
  final Color? backgroundColor;
  final double? height;
  final bool? boldLabel;
  const GreyOutlinedLabel(
      {super.key,
      required this.label,
      required this.labelColor,
      this.height,
      this.backgroundColor,
      this.boldLabel});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: height,
      decoration: BoxDecoration(
          border: Border.all(color: DentsuColors.lightGrey),
          color: backgroundColor ?? DentsuColors.lightGrey,
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        child: Text(
          label,
          style: TextStyle(
              color: labelColor,
              fontWeight:
                  boldLabel ?? false ? FontWeight.bold : FontWeight.normal),
        ),
      ),
    );
  }
}
