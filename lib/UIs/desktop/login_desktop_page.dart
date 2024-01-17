import 'package:auto_route/auto_route.dart';
import 'package:dentsu_interview/UIs/authentication/widgets/text_field.dart';
import 'package:dentsu_interview/providers/auth_provider/auth_provider.dart';
import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:dentsu_interview/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

@RoutePage()
class LoginDesktopPage extends ConsumerWidget {
  LoginDesktopPage({super.key});

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(authProvider, (prev, next) {
      next.maybeWhen(
        orElse: () {},
        error: (message) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(message),
            backgroundColor: Colors.red,
          ));
        },
        success: (data) {
          AutoRouter.of(context).push(const MainDashboardRoute());
        },
      );
    });
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: FormBuilder(
          key: _formKey,
          child: Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svgs/purple_logo.svg',
                        height: 60,
                      ),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Divider(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(
                            height: 100,
                          ),
                          Text(
                            'Welcome to Dentsu LMS',
                            style: TextStyle(
                                color: DentsuColors.purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 52),
                          ),
                          const Text(
                            "A tool that leverage's the power of data and artificial intelligence to drive digital transformation at scale",
                            style: TextStyle(fontSize: 20),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          AuthTextField(
                            name: 'email',
                            labelText: 'Username',
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(),
                              FormBuilderValidators.email()
                            ]),
                            labelColor: DentsuColors.purple,
                            hintText: 'Enter your email of Username',
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          AuthTextField(
                            labelColor: DentsuColors.purple,
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(),
                              FormBuilderValidators.minLength(8)
                            ]),
                            labelText: 'Password',
                            name: 'password',
                            hintText: 'Enter your Password',
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: FormBuilderCheckbox(
                                    contentPadding: const EdgeInsets.all(0),
                                    activeColor: Colors.white,
                                    name: 'keep_logged_in',
                                    side: MaterialStateBorderSide.resolveWith(
                                      (Set<MaterialState> states) {
                                        return const BorderSide(
                                            color: Colors.black);
                                      },
                                    ),
                                    checkColor: Colors.black,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4))),
                                    title: const Text(
                                      'Keep me logged in',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    )),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Forgot Password?',
                                    style:
                                        TextStyle(color: DentsuColors.purple),
                                  )),
                            ],
                          ),
                          const SizedBox(
                            height: 42,
                          ),
                          ref.watch(authProvider).maybeWhen(
                              orElse: () => MaterialButton(
                                    onPressed: () {
                                      if (_formKey.currentState!
                                          .saveAndValidate()) {
                                        ref.read(authProvider.notifier).login(
                                            data: _formKey.currentState!.value);
                                      }
                                    },
                                    color: DentsuColors.purple,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(90)),
                                    child: const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 12),
                                        child: Text(
                                          'Log In',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  ),
                              loading: () => Center(
                                    child: CircularProgressIndicator(
                                      color: DentsuColors.brightPurple,
                                    ),
                                  )),
                        ],
                      ),
                    ),
                  ),
                  const Divider(),
                  Row(
                    children: [
                      const Text('2023 Dentsu.com'),
                      const Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: const Text('Privacy Policy')),
                      TextButton(
                          onPressed: () {},
                          child: const Text('Terms and Conditions')),
                    ],
                  )
                ],
              )),
              Expanded(
                  child: Stack(
                children: [
                  Positioned.fill(
                      child: Image.asset('assets/images/login_image.png')),
                  Positioned(
                    left: 100,
                    bottom: 200,
                    right: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Marketing Automation",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                            "360 degree messaging automation for companies made for both customers and internal cross-communication ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 300,
                          child: LinearProgressIndicator(
                            value: 0.7,
                            backgroundColor: Colors.black54,
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(90),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
