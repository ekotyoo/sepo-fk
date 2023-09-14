import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sepo_app/features/assessment/assessment_controller.dart';
import 'package:sepo_app/features/assessment/models/exercise_duration.dart';
import 'package:sepo_app/features/assessment/models/illness_duration_input.dart';
import 'package:sepo_app/features/auth/presentation/login/login_screen.dart';

import '../../common/constants/colors.dart';

class CurrentConditionForm extends ConsumerWidget {
  const CurrentConditionForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(assessmentControllerProvider).currentConditionState;

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
                    'Bagaimana kondisimu?',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 200,
                    child: Image.asset('assets/images/assessment_2.png'),
                  ),
                  const SizedBox(height: 12),
                  FormCheckbox(
                    title: 'Apa saja penyakit yang pernah anda alami?',
                    subtitle: '(Pilih semua yang sesuai)',
                    items: [
                      CheckboxItem(
                        label: 'Hipertensi',
                        value: state.illnessHistory['hipertensi'] ?? false,
                        onChanged: (value) {
                          ref
                              .read(assessmentControllerProvider.notifier)
                              .onIllnessHistoryChange('hipertensi', value);
                        },
                      ),
                      CheckboxItem(
                        label: 'Asam Urat',
                        value: state.illnessHistory['asam_urat'] ?? false,
                        onChanged: (value) {
                          ref
                              .read(assessmentControllerProvider.notifier)
                              .onIllnessHistoryChange('asam_urat', value);
                        },
                      ),
                      CheckboxItem(
                        label: 'Diabetes',
                        value: state.illnessHistory['diabetes'] ?? false,
                        onChanged: (value) {
                          ref
                              .read(assessmentControllerProvider.notifier)
                              .onIllnessHistoryChange('diabetes', value);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  SepoTextField(
                    label: 'Lainnya',
                    initialText: state.otherIllness,
                    onChanged: ref
                        .read(assessmentControllerProvider.notifier)
                        .onOtherIllnessChange,
                  ),
                  const SizedBox(height: 24),
                  FormOption(
                    title: 'Sudah berapa lama anda sakit nyeri pada lutut?',
                    items: IllnessDuration.values
                        .map(
                          (e) => CheckboxItem(
                            label: e.getLabel(),
                            value: state.illnessDurationInput.value == e,
                            onChanged: (value) {
                              ref
                                  .read(assessmentControllerProvider.notifier)
                                  .onIllnessDurationChange(e);
                            },
                          ),
                        )
                        .toList(),
                  ),
                  const SizedBox(height: 24),
                  FormOption(
                    title: 'Durasi anda saat berolahraga',
                    items: ExerciseDuration.values
                        .map(
                          (e) => CheckboxItem(
                            label: e.getLabel(),
                            value: e == state.exerciseDurationInput.value,
                            onChanged: (value) {
                              ref
                                  .read(assessmentControllerProvider.notifier)
                                  .onExerciseDurationChange(e);
                            },
                          ),
                        )
                        .toList(),
                  ),
                  const SizedBox(height: 24),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Kejadian trauma sendi lutut?'),
                  ),
                  const SizedBox(height: 12),
                  SepoTextField(
                    label: 'Jatuh, Kecelakaan, dsb',
                    initialText: state.jointTraumaCause,
                    onChanged: ref
                        .read(assessmentControllerProvider.notifier)
                        .onJointTraumaCauseChange,
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

class CheckboxItem {
  final String label;
  final bool value;
  Function(bool)? onChanged;

  CheckboxItem({required this.label, required this.value, this.onChanged});
}

class FormOption extends StatelessWidget {
  const FormOption({
    Key? key,
    required this.items,
    this.title,
    this.subtitle,
  }) : super(key: key);

  final String? title;
  final String? subtitle;
  final List<CheckboxItem> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) Text(title!),
        if (subtitle != null)
          Text(
            subtitle!,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: kColorNeutral50),
          ),
        const SizedBox(height: 12),
        SizedBox(
          height: 220,
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) => OptionItem(
              item: items[index],
              onChanged: (value) {
                if (value == null) return;
                items[index].onChanged?.call(value);
              },
            ),
          ),
        ),
      ],
    );
  }
}

class FormCheckbox extends StatelessWidget {
  const FormCheckbox({
    Key? key,
    required this.items,
    required this.title,
    this.subtitle,
  }) : super(key: key);

  final String title;
  final String? subtitle;
  final List<CheckboxItem> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        if (subtitle != null)
          Text(
            subtitle!,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: kColorNeutral50),
          ),
        const SizedBox(height: 12),
        ...items
            .map(
              (e) => OptionItem(
                item: e,
                selected: e.value,
                onChanged: (value) {
                  if (value == null) return;
                  e.onChanged?.call(value);
                },
              ),
            )
            .toList(),
      ],
    );
  }
}

class OptionItem extends StatelessWidget {
  const OptionItem({
    Key? key,
    this.selected = false,
    required this.item,
    required this.onChanged,
  }) : super(key: key);
  final CheckboxItem item;
  final bool selected;
  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: InkWell(
        onTap: () {
          onChanged?.call(!item.value);
        },
        child: Container(
          height: 48,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              Expanded(child: Text(item.label)),
              Checkbox(
                value: item.value,
                onChanged: onChanged,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
