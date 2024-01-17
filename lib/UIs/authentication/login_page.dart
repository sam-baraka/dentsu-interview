import 'package:auto_route/auto_route.dart';
import 'package:dentsu_interview/UIs/authentication/widgets/text_field.dart';
import 'package:dentsu_interview/providers/auth_provider/auth_provider.dart';
import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:dentsu_interview/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

@RoutePage()
class LoginPage extends ConsumerWidget {
  LoginPage({super.key});

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
          AutoRouter.of(context).push(const DashboardRoute());
        },
      );
    });
    return Scaffold(
      backgroundColor: DentsuColors.purple,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: FormBuilder(
            key: _formKey,
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
                AuthTextField(
                  name: 'email',
                  labelText: 'Username',
                  hintText: 'Enter your email of Username',
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.email()
                  ]),
                ),
                const SizedBox(
                  height: 24,
                ),
                AuthTextField(
                  labelText: 'Password',
                  name: 'password',
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.minLength(8)
                  ]),
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
                ref.watch(authProvider).maybeWhen(
                    orElse: () => MaterialButton(
                          onPressed: () {
                            if (_formKey.currentState!.saveAndValidate()) {
                              ref
                                  .read(authProvider.notifier)
                                  .login(data: _formKey.currentState!.value);
                            }
                          },
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90)),
                          child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 12),
                              child: Text('Log In')),
                        ),
                    loading: () => const Center(
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
