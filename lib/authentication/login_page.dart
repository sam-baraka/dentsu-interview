import 'package:auto_route/auto_route.dart';
import 'package:dentsu_interview/authentication/widgets/text_field.dart';
import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: DentsuColors.purple,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/icon/icon.png'),
            const Text(
              'Welcome to Dentsu LMS',
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            AuthTextField(
              name: 'email',
              labelText: 'Username',
              hintText: 'Enter your email of Username',
            ),
            SizedBox(
              height: 24,
            ),
            AuthTextField(
              labelText: 'Password',
              name: 'password',
              hintText: 'Enter your Password',
            ),
          ],
        ),
      ),
    );
  }
}
