import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sepo_app/features/assessment/assessment_controller.dart';
import 'package:sepo_app/features/auth/presentation/login/login_screen.dart';

import '../../common/constants/colors.dart';
import '../../common/widgets/sepo_dropdown.dart';
import 'current_condition_form.dart';
import 'personal_data_form.dart';
import 'pill_count_state.dart';

class PillCountForm extends ConsumerStatefulWidget {
  const PillCountForm({Key? key}) : super(key: key);

  @override
  ConsumerState<PillCountForm> createState() => _PillCountFormState();
}

class _PillCountFormState extends ConsumerState<PillCountForm> {
  final List<Medicine> _medicines = const [
    Medicine(name: 'Obat 1'),
    Medicine(name: 'Obat 2'),
    Medicine(name: 'Obat 3'),
    Medicine(name: 'Obat 4'),
  ];

  final List<MedicineWithCount> _medicinesCount = const [
    MedicineWithCount(name: 'Obat 1'),
    MedicineWithCount(name: 'Obat 2'),
    MedicineWithCount(name: 'Obat 3'),
    MedicineWithCount(name: 'Obat 4'),
  ];

  Medicine? _currentMedicine;
  MedicineWithCount? _currentMedicineBefore;
  MedicineWithCount? _currentMedicineAfter;

  late TextEditingController _currentMedicineBeforeCount;
  late TextEditingController _currentMedicineAfterCount;

  @override
  void initState() {
    super.initState();
    _currentMedicineBeforeCount = TextEditingController();
    _currentMedicineAfterCount = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(assessmentControllerProvider).pillCountState;

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
                    'Pill Count',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 200,
                    child: Image.asset('assets/images/assessment_3.png'),
                  ),
                  const SizedBox(height: 12),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        'Apa nama obat yang anda gunakan untuk mengatasi nyeri lutut?'),
                  ),
                  const SizedBox(height: 12),
                  ...state.medicineUsed
                      .map(
                        (e) => SepoListTile(
                          title: e.name,
                          onDelete: () {
                            ref
                                .read(assessmentControllerProvider.notifier)
                                .deleteMedicine(e);
                          },
                        ),
                      )
                      .toList(),
                  SepoDropdown(
                    hint: 'Pilih Obat',
                    value: _currentMedicine,
                    items: _medicines
                        .map(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: Text(e.name),
                          ),
                        )
                        .toList(),
                    onChanged: (value) =>
                        setState(() => _currentMedicine = value),
                    errorText: null,
                  ),
                  const SizedBox(height: 12),
                  OutlinedButton(
                    onPressed: _currentMedicine == null
                        ? null
                        : () {
                            if (_currentMedicine == null) return;
                            ref
                                .read(assessmentControllerProvider.notifier)
                                .addMedicine(_currentMedicine!);
                          },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.add), Text('Tambah Obat')],
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Dari mana obat tersebut anda dapatkan?'),
                  ),
                  const SizedBox(height: 12),
                  SepoDropdown(
                    hint: 'Pilih Sumber',
                    value: state.medicineSource,
                    items: MedicineSource.values
                        .map(
                          (e) => DropdownMenuItem(
                              value: e, child: Text(e.getLabel())),
                        )
                        .toList(),
                    onChanged: (value) {
                      ref
                          .read(assessmentControllerProvider.notifier)
                          .onMedicineSourceChange(value);
                    },
                    errorText: null,
                  ),
                  const SizedBox(height: 24),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Kapan anda membeli atau mendapat obat tersebut?'),
                  ),
                  const SizedBox(height: 12),
                  PickDateButton(
                    label: 'Tanggal Pembelian',
                    dateInput: state.medicineBoughtDateInput,
                    onTap: () async {
                      final date = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1800),
                        lastDate: DateTime(2050),
                      );
                      ref
                          .read(assessmentControllerProvider.notifier)
                          .onMedicineBoughtDateChange(date);
                    },
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Expanded(child: Divider()),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'Atau jika lupa',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: kColorNeutral50),
                        ),
                      ),
                      const Expanded(child: Divider()),
                    ],
                  ),
                  FormOption(
                    items: MedicineBoughtTime.values
                        .map(
                          (e) => CheckboxItem(
                        label: e.getLabel(),
                        value: e == state.medicineBoughtTime,
                        onChanged: (value) {
                          ref
                              .read(assessmentControllerProvider.notifier)
                              .onMedicineBoughtTimeChange(e);
                        },
                      ),
                    )
                        .toList(),
                  ),
                  const SizedBox(height: 24),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        'Berapa jumlah obat awal/utuh (saat masih baru belum diminum)?'),
                  ),
                  const SizedBox(height: 12),
                  ...state.medicineBefore
                      .map(
                        (e) => SepoListTile(
                      title: '${e.name} x${e.count}',
                      onDelete: () {
                        ref
                            .read(assessmentControllerProvider.notifier)
                            .deleteMedicineBefore(e);
                      },
                    ),
                  )
                      .toList(),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: SepoDropdown(
                          value: _currentMedicineBefore,
                          hint: 'Nama Obat',
                          items: _medicinesCount
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e.name),
                                ),
                              )
                              .toList(),
                          onChanged: (value) =>
                              setState(() => _currentMedicineBefore = value),
                          errorText: null,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: SepoTextField(
                          label: 'Jumlah',
                          controller: _currentMedicineBeforeCount,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  OutlinedButton(
                    onPressed: () {
                      if (_currentMedicineBefore == null) return;
                      final medicine = _currentMedicineBefore!.copyWith(
                          count: int.parse(_currentMedicineBeforeCount.text));
                      ref
                          .read(assessmentControllerProvider.notifier)
                          .addMedicineBefore(medicine);
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.add), Text('Tambah Obat')],
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Berapa sisa obat saat ini?'),
                  ),
                  const SizedBox(height: 12),
                  ...state.medicineAfter
                      .map(
                        (e) => SepoListTile(
                      title: '${e.name} x${e.count}',
                      onDelete: () {
                        ref
                            .read(assessmentControllerProvider.notifier)
                            .deleteMedicineAfter(e);
                      },
                    ),
                  )
                      .toList(),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: SepoDropdown(
                          hint: 'Nama Obat',
                          value: _currentMedicineAfter,
                          items: _medicinesCount
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e.name),
                                ),
                              )
                              .toList(),
                          onChanged: (value) =>
                              setState(() => _currentMedicineAfter = value),
                          errorText: null,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: SepoTextField(
                          label: 'Jumlah',
                          controller: _currentMedicineAfterCount,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  OutlinedButton(
                    onPressed: () {
                      if (_currentMedicineAfter == null) return;
                      final medicine = _currentMedicineAfter!.copyWith(
                          count: int.parse(_currentMedicineAfterCount.text));
                      ref
                          .read(assessmentControllerProvider.notifier)
                          .addMedicineAfter(medicine);
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.add), Text('Tambah Obat')],
                    ),
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

class SepoListTile extends StatelessWidget {
  const SepoListTile({Key? key, required this.title, this.onDelete})
      : super(key: key);
  final String title;
  final VoidCallback? onDelete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        height: 56,
        alignment: Alignment.centerLeft,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.white),
        child: Row(
          children: [
            Expanded(child: Text(title)),
            IconButton(onPressed: onDelete, icon: const Icon(Icons.delete))
          ],
        ),
      ),
    );
  }
}
