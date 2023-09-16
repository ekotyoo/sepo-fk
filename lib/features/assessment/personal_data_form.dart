import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sepo_app/common/constants/colors.dart';
import 'package:sepo_app/common/widgets/sepo_button.dart';
import 'package:sepo_app/common/widgets/sepo_dropdown.dart';
import 'package:sepo_app/features/assessment/models/education_input.dart';
import 'package:sepo_app/features/assessment/models/gender_input.dart';

import '../../common/models/date_input.dart';
import '../auth/presentation/login/login_screen.dart';
import 'assessment_controller.dart';

class PersonalDataForm extends ConsumerWidget {
  const PersonalDataForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(assessmentControllerProvider).personalDataState;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'Mari berkenalan',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: kColorNeutral100),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Lengkapi data dirimu',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 200,
                    child: Image.asset('assets/images/assessment_1.png'),
                  ),
                  const SizedBox(height: 12),
                  SepoTextField(
                    label: 'Nama Lengkap',
                    initialText: state.nameInput.value,
                    onChanged: (value) {
                      ref
                          .read(assessmentControllerProvider.notifier)
                          .onNameChange(value);
                    },
                    errorText: null,
                  ),
                  const SizedBox(height: 12),
                  PickDateButton(
                    dateInput: state.birthDateInput,
                    label: 'Tanggal Lahir',
                    onTap: () async {
                      final date = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1800),
                        lastDate: DateTime(2050),
                      );
                      ref
                          .read(assessmentControllerProvider.notifier)
                          .onBirthDateChange(date);
                    },
                  ),
                  const SizedBox(height: 12),
                  SepoDropdown(
                    value: state.genderInput.value,
                    hint: 'Jenis Kelamin',
                    items: Gender.values
                        .map(
                          (e) => DropdownMenuItem<Gender>(
                            value: e,
                            child: Text(e.getLabel()),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      ref
                          .read(assessmentControllerProvider.notifier)
                          .onGenderChange(value);
                    },
                    errorText: null,
                  ),
                  const SizedBox(height: 12),
                  SepoTextField(
                    label: 'Alamat',
                    initialText: state.addressInput.value,
                    onChanged: (value) {
                      ref
                          .read(assessmentControllerProvider.notifier)
                          .onAddressChange(value);
                    },
                    errorText: null,
                  ),
                  const SizedBox(height: 12),
                  SepoTextField(
                    label: 'Nomor Handphone',
                    initialText: state.phoneInput.value,
                    onChanged: (value) {
                      ref
                          .read(assessmentControllerProvider.notifier)
                          .onPhoneChange(value);
                    },
                    errorText: null,
                  ),
                  const SizedBox(height: 12),
                  SepoDropdown(
                    hint: 'Pendidikan Terakhir',
                    value: state.educationInput.value,
                    items: Education.values
                        .map(
                          (e) => DropdownMenuItem<Education>(
                            value: e,
                            child: Text(
                              e.getLabel(),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      ref
                          .read(assessmentControllerProvider.notifier)
                          .onEducationChange(value);
                    },
                    errorText: null,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PickDateButton extends StatelessWidget {
  const PickDateButton({Key? key, required this.dateInput, required this.label, this.onTap})
      : super(key: key);

  final DateInput dateInput;
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: onTap,
          style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
              foregroundColor: MaterialStateProperty.all(Colors.black),
              backgroundColor: MaterialStateProperty.all(Colors.white)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                dateInput.value == null
                    ? label
                    : '${dateInput.value}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Icon(Icons.calendar_month),
            ],
          ),
        ),
        if (!dateInput.isPure &&
            dateInput.error?.getErrorMessage() != null) ...[
          const SizedBox(height: 4),
          Text(
            dateInput.error!.getErrorMessage(),
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.copyWith(color: Theme.of(context).colorScheme.error),
          ),
          const SizedBox(height: 4),
        ]
      ],
    );
  }
}
