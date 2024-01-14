import 'package:dentsu_interview/main_home/bottom_navigation/bottom_navigation_provider.dart';
import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationWidget extends ConsumerWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var bottomSVGS = [
      'assets/svgs/home.svg',
      'assets/svgs/people.svg',
      'assets/svgs/briefcase.svg',
      'assets/svgs/person.svg'
    ];
    return Material(
      color: Colors.white,
      elevation: 20,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: bottomSVGS.map((e) {
            return IconButton(
                onPressed: () {
                  ref
                      .read(bottomNavigationStateNotifierProvider.notifier)
                      .changeIndex(bottomSVGS.indexOf(e));
                },
                icon: SvgPicture.asset(
                  e,
                  colorFilter: ColorFilter.mode(
                      ref.watch(bottomNavigationStateNotifierProvider) ==
                              bottomSVGS.indexOf(e)
                          ? DentsuColors.brightPurple
                          : DentsuColors.lightGrey,
                      BlendMode.srcIn),
                ));
          }).toList()),
    );
  }
}
