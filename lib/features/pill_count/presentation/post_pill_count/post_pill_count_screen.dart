import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:SEPO/common/widgets/sepo_button.dart';
import 'package:SEPO/features/auth/presentation/login/login_screen.dart';
import 'package:SEPO/features/pill_count/presentation/post_pill_count/post_pill_count_controller.dart';
import '../../../../common/constants/colors.dart';
import '../../../../common/widgets/sepo_dropdown.dart';
import '../../../../utils/snackbar_utils.dart';
import '../../../assessment/current_condition_form.dart';
import '../../../assessment/domain/pill_count.dart';
import '../../../assessment/personal_data_form.dart';
import '../../../assessment/pill_count_state.dart';

class PostPillCountScreen extends ConsumerWidget {
  const PostPillCountScreen({
    required this.pillCount,
    Key? key,
  }) : super(key: key);

  final PillCount pillCount;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(postPillCountControllerProvider);
    final stateFormValidated = state.medicineAfter.isNotEmpty &&
        state.medicineBefore.isNotEmpty &&
        state.medicineSource != null &&
        state.medicineUsed.isNotEmpty;

    ref.listen(
      postPillCountControllerProvider.select((value) => value.errorMessage),
          (previous, next) {
        if (next != null && context.mounted) {
          showSnackbar(context, message: next, type: SnackbarType.error);
        }
        ref.read(postPillCountControllerProvider.notifier).setErrorMessage(null);
      },
    );

    ref.listen(
      postPillCountControllerProvider.select((value) => value.successMessage),
          (previous, next) {
        if (next != null && context.mounted) {
          showSnackbar(context, message: next);
          context.pop();
        }
        ref.read(postPillCountControllerProvider.notifier).setSuccessMessage(null);
      },
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pill Count', style: Theme.of(context).textTheme.titleLarge),
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
        ),
        body: Column(
          children: [
            const Expanded(
              child: _PillCountForm(),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: SepoButton(
                label: 'Simpan',
                disabled: !stateFormValidated,
                loading: state.isLoading,
                onPressed: () {
                  if (pillCount.number == null) return;
                  ref
                      .read(postPillCountControllerProvider.notifier)
                      .onSubmit(pillCount.number!);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PillCountForm extends ConsumerStatefulWidget {
  const _PillCountForm({Key? key}) : super(key: key);

  @override
  ConsumerState<_PillCountForm> createState() => _PillCountFormState();
}

class _PillCountFormState extends ConsumerState<_PillCountForm> {
  final List<Medicine> _medicines = const [
    Medicine(name: 'Natrium Diklofenak'),
    Medicine(name: 'Asam Mefenamat'),
    Medicine(name: 'Paracetamol'),
    Medicine(name: 'Piroxicam'),
    Medicine(name: 'Lainnya'),
  ];

  final List<MedicineWithCount> _medicinesCount = const [
    MedicineWithCount(name: 'Natrium Diklofenak'),
    MedicineWithCount(name: 'Asam Mefenamat'),
    MedicineWithCount(name: 'Paracetamol'),
    MedicineWithCount(name: 'Piroxicam'),
    MedicineWithCount(name: 'Lainnya'),
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
    final state = ref.watch(postPillCountControllerProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 32),
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
                                .read(postPillCountControllerProvider.notifier)
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
                                .read(postPillCountControllerProvider.notifier)
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
                          .read(postPillCountControllerProvider.notifier)
                          .onMedicineSourceChange(value);
                    },
                    errorText: null,
                  ),
                  const SizedBox(height: 24),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child:
                        Text('Kapan anda membeli atau mendapat obat tersebut?'),
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
                          .read(postPillCountControllerProvider.notifier)
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
                                  .read(
                                      postPillCountControllerProvider.notifier)
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
                        'Berapa jumlah obat awal/utuh (saat masih baru beli)?'),
                  ),
                  const SizedBox(height: 12),
                  ...state.medicineBefore
                      .map(
                        (e) => SepoListTile(
                          title: '${e.name} x${e.count}',
                          onDelete: () {
                            ref
                                .read(postPillCountControllerProvider.notifier)
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
                          .read(postPillCountControllerProvider.notifier)
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
                                .read(postPillCountControllerProvider.notifier)
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
                          .read(postPillCountControllerProvider.notifier)
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
