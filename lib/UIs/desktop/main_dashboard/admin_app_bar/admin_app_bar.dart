import 'package:dentsu_interview/UIs/common/grey_text_field.dart';
import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdminAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const AdminAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: DentsuColors.purple,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Row(
          children: [
            Image.asset(
              'assets/icon/icon.png',
              height: 30,
            ),
            const SizedBox(
              width: 200,
            ),
            IconButton(
                onPressed: () {},
                padding: const EdgeInsets.all(0),
                icon: const Icon(
                  Icons.dehaze,
                  size: 30,
                  color: Colors.white,
                )),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 300,
              child: GreyTextField(
                hintText: 'Search',
                backgroundColor: Colors.transparent,
                name: 'search',
                prefixIcon: Icon(
                  Icons.search,
                  color: DentsuColors.lightGrey,
                ),
              ),
            ),
            const Spacer(),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                )),
            const CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://media.istockphoto.com/id/1410538853/photo/young-man-in-the-public-park.webp?b=1&s=170667a&w=0&k=20&c=pGdjFVdK-_BhTa6PMy5VNcXdbxVNngzg-OPzMfJKrG8='),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 80);
}
