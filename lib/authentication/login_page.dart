import 'package:auto_route/auto_route.dart';
import 'package:dentsu_interview/authentication/widgets/text_field.dart';
import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:dentsu_interview/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: DentsuColors.purple,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 90,
              ),
              Image.asset(
                'assets/icon/icon.png',
                height: 60,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Welcome to Dentsu LMS',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'A tool that leverage\'s the power of data and artificial intelligence to drive digital transformation at scale',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 60,
              ),
              const AuthTextField(
                name: 'email',
                labelText: 'Username',
                hintText: 'Enter your email of Username',
              ),
              const SizedBox(
                height: 24,
              ),
              const AuthTextField(
                labelText: 'Password',
                name: 'password',
                hintText: 'Enter your Password',
              ),
              FormBuilderCheckbox(
                  contentPadding: const EdgeInsets.all(0),
                  name: 'keep_logged_in',
                  side: MaterialStateBorderSide.resolveWith(
                    (Set<MaterialState> states) {
                      return const BorderSide(color: Colors.white);
                    },
                  ),
                  checkColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  title: const Text(
                    'Keep me logged in',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
              const SizedBox(
                height: 42,
              ),
              MaterialButton(
                onPressed: () {
                  AutoRouter.of(context).push(const DashboardRoute());
                },
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90)),
                child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Text('Log In')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
