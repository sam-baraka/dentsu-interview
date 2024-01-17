import 'package:auto_route/auto_route.dart';
import 'package:dentsu_interview/UIs/common/grey_drop_down.dart';
import 'package:dentsu_interview/UIs/common/grey_text_field.dart';
import 'package:dentsu_interview/UIs/main_home/app_bar/app_bar.dart';
import 'package:dentsu_interview/providers/quotes_provider/quotes_provider.dart';
import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

@RoutePage()
class AddQuotePage extends ConsumerWidget {
  AddQuotePage({super.key});

  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(quotesProvider, (prev, next) {
      next.maybeWhen(
        orElse: () {},
        error: (message) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(message),
            backgroundColor: Colors.red,
          ));
        },
        success: (data) {
          ref.read(getQuotesProvider.notifier).getQuotes();
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Created Quote Successfully'),
            backgroundColor: Colors.green,
          ));
          AutoRouter.of(context).pop();
        },
      );
    });
    return Scaffold(
      backgroundColor: DentsuColors.lightGreyLight,
      appBar: const AppAppBar(),
      body: SingleChildScrollView(
        child: FormBuilder(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Add Quote',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
                const SizedBox(
                  height: 10,
                ),
                GreyTextField(
                  helperText: 'First Name',
                  hintText: 'First Name',
                  name: 'firstName',
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                  backgroundColor: Colors.white,
                ),
                const SizedBox(
                  height: 10,
                ),
                GreyTextField(
                  helperText: 'Middle Name',
                  hintText: 'Middle Name',
                  name: 'middleName',
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                  backgroundColor: Colors.white,
                ),
                const SizedBox(
                  height: 10,
                ),
                GreyTextField(
                  helperText: 'Last Name',
                  hintText: 'Last Name',
                  name: 'lastName',
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                  backgroundColor: Colors.white,
                ),
                const SizedBox(
                  height: 10,
                ),
                GreyTextField(
                  helperText: 'Email',
                  hintText: 'Email',
                  name: 'email',
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.email(),
                    FormBuilderValidators.required(),
                  ]),
                  backgroundColor: Colors.white,
                ),
                const SizedBox(
                  height: 10,
                ),
                const GreyDropDownField(
                    hintText: 'Lead Source',
                    helperText: 'Originating Lead Source',
                    items: [
                      DropdownMenuItem(
                          value: 'Sales Agent', child: Text('Sales Agent'))
                    ],
                    name: 'leadSource'),
                const SizedBox(
                  height: 10,
                ),
                const GreyDropDownField(
                    hintText: 'Source',
                    helperText: 'Source',
                    items: [
                      DropdownMenuItem(
                        value: 'Agent Portal',
                        child: Text('Agent Portal'),
                      )
                    ],
                    name: 'leadSource'),
                const SizedBox(
                  height: 10,
                ),
                const GreyDropDownField(
                    hintText: 'Age Bracket',
                    helperText: 'Age Bracket',
                    items: [
                      DropdownMenuItem(
                        value: '18-24',
                        child: Text('18-24'),
                      ),
                      DropdownMenuItem(
                        value: '25-34',
                        child: Text('25-34'),
                      ),
                      DropdownMenuItem(
                        value: '35-44',
                        child: Text('35-44'),
                      ),
                    ],
                    name: 'ageBracket'),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                const GreyDropDownField(
                    hintText: 'Cover Limit',
                    helperText: 'In Patient Cover Limit',
                    items: [
                      DropdownMenuItem(
                        value: 'KES 500,000',
                        child: Text('KES 500,000'),
                      ),
                      DropdownMenuItem(
                        value: 'KES 1,000,000',
                        child: Text('KES 1,000,000'),
                      ),
                    ],
                    name: 'inPatientCoverLimit'),
                const SizedBox(
                  height: 10,
                ),
                const GreyDropDownField(
                    hintText: 'Spouse Covered?',
                    helperText: 'Spouse Covered?',
                    items: [
                      DropdownMenuItem(
                        value: 'Yes',
                        child: Text('Yes'),
                      ),
                      DropdownMenuItem(
                        value: 'No',
                        child: Text('No'),
                      ),
                    ],
                    name: 'inPatientCoverLimit'),
                const SizedBox(
                  height: 10,
                ),
                const GreyDropDownField(
                    hintText: 'Spouse Age Bracket',
                    helperText: 'Spouse Age Bracket',
                    items: [
                      DropdownMenuItem(
                        value: '18-24',
                        child: Text('18-24'),
                      ),
                      DropdownMenuItem(
                        value: '25-34',
                        child: Text('25-34'),
                      ),
                      DropdownMenuItem(
                        value: '35-44',
                        child: Text('35-44'),
                      ),
                    ],
                    name: 'spouseAgeBracket'),
                const SizedBox(
                  height: 10,
                ),
                const GreyTextField(
                    hintText: 'Number of children',
                    backgroundColor: Colors.white,
                    helperText: 'Number of children',
                    name: 'numberOfChildren'),
                const SizedBox(
                  height: 30,
                ),
                // Covers : Inpatient, Outpatient, No Co-pay, Maternity, Dental, Optical, Last Expense, Repatriate

                FormBuilderField<bool>(
                    builder: (field) {
                      return CheckboxListTile(
                          title: const Text('Inpatient'),
                          value: field.value ?? false,
                          onChanged: (value) {
                            field.didChange(value);
                          });
                    },
                    name: 'inpatient'),
                FormBuilderField<bool>(
                    builder: (field) {
                      return CheckboxListTile(
                          title: const Text('Outpatient'),
                          value: field.value ?? false,
                          onChanged: (value) {
                            field.didChange(value);
                          });
                    },
                    name: 'outpatient'),
                FormBuilderField<bool>(
                    builder: (field) {
                      return CheckboxListTile(
                          title: const Text('No Co-pay'),
                          value: field.value ?? false,
                          onChanged: (value) {
                            field.didChange(value);
                          });
                    },
                    name: 'noCoPay'),
                FormBuilderField<bool>(
                    builder: (field) {
                      return CheckboxListTile(
                          title: const Text('Maternity'),
                          value: field.value ?? false,
                          onChanged: (value) {
                            field.didChange(value);
                          });
                    },
                    name: 'maternity'),
                FormBuilderField<bool>(
                    builder: (field) {
                      return CheckboxListTile(
                          title: const Text('Dental'),
                          value: field.value ?? false,
                          onChanged: (value) {
                            field.didChange(value);
                          });
                    },
                    name: 'dental'),
                FormBuilderField<bool>(
                    builder: (field) {
                      return CheckboxListTile(
                          title: const Text('Optical'),
                          value: field.value ?? false,
                          onChanged: (value) {
                            field.didChange(value);
                          });
                    },
                    name: 'optical'),
                FormBuilderField<bool>(
                    builder: (field) {
                      return CheckboxListTile(
                          title: const Text('Last Expense'),
                          value: field.value ?? false,
                          onChanged: (value) {
                            field.didChange(value);
                          });
                    },
                    name: 'lastExpense'),
                FormBuilderField<bool>(
                    builder: (field) {
                      return CheckboxListTile(
                          title: const Text('Repatriate'),
                          value: field.value ?? false,
                          onChanged: (value) {
                            field.didChange(value);
                          });
                    },
                    name: 'repatriate'),
                ref.watch(quotesProvider).maybeWhen(
                      orElse: () => MaterialButton(
                        onPressed: () {
                          if (_formKey.currentState!.saveAndValidate()) {
                            ref.read(quotesProvider.notifier).createQuote(
                                data: _formKey.currentState!.value);
                          }
                        },
                        color: DentsuColors.brightPurple,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text(
                          'Add Lead',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
