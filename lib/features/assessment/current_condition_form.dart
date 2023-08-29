import 'package:flutter/material.dart';
import 'package:sepo_app/features/auth/presentation/login/login_screen.dart';

import '../../common/constants/colors.dart';

class CurrentConditionForm extends StatelessWidget {
  const CurrentConditionForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  FormOption(
                    title: 'Apa saja penyakit yang pernah anda alami?',
                    subtitle: '(Pilih semua yang sesuai)',
                    items: [
                      CheckboxItem('Tidak Ada', false),
                      CheckboxItem('Hipertensi', false),
                      CheckboxItem('Asam Urat', false),
                      CheckboxItem('Diabetes', false),
                    ],
                  ),
                  const SizedBox(height: 24),
                  FormOption(
                    title: 'Sudah berapa lama anda sakit nyeri pada lutut?',
                    items: [
                      CheckboxItem('Kurang dari satu tahun', false),
                      CheckboxItem('Lebih dari satu tahun', false),
                      CheckboxItem('Lebih dari tiga tahun', false),
                    ],
                  ),
                  const SizedBox(height: 24),
                  FormOption(
                    title: 'Durasi anda saat berolahraga',
                    items: [
                      CheckboxItem('Kurang dari 30 menit', false),
                      CheckboxItem('Lebih dari 30 menit', false),
                      CheckboxItem('Tidak pernah berolahraga', false),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Kejadian trauma sendi lutut?'),
                  ),
                  const SizedBox(height: 12),
                  SepoTextField(
                    label: 'Jatuh, Kecelakaan, dsb',
                    onChanged: (p0) {},
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

  CheckboxItem(this.label, this.value);
}

class FormOption extends StatelessWidget {
  const FormOption({
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
                onChanged: (value) {},
              ),
            )
            .toList(),
      ],
    );
  }
}

class OptionItem extends StatelessWidget {
  const OptionItem({Key? key, required this.item, required this.onChanged})
      : super(key: key);
  final CheckboxItem item;
  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
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
    );
  }
}
