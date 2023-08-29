import 'package:flutter/material.dart';
import 'package:sepo_app/features/auth/presentation/login/login_screen.dart';

import '../../common/constants/colors.dart';
import '../../common/widgets/sepo_button.dart';
import '../../common/widgets/sepo_dropdown.dart';

class PillCountForm extends StatelessWidget {
  const PillCountForm({Key? key}) : super(key: key);

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
                  SepoDropdown(
                    hint: 'Pilih Obat',
                    items: const [
                      DropdownMenuItem(value: 'obat1', child: Text('Obat 1')),
                      DropdownMenuItem(value: 'obat2', child: Text('Obat 2')),
                      DropdownMenuItem(value: 'obat3', child: Text('Obat 3')),
                      DropdownMenuItem(value: 'obat4', child: Text('Obat 4')),
                    ],
                    onChanged: (value) {},
                    errorText: null,
                  ),
                  const SizedBox(height: 12),
                  OutlinedButton(
                    onPressed: () {},
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
                    items: const [
                      DropdownMenuItem(value: 'obat1', child: Text('Sumber 1')),
                      DropdownMenuItem(value: 'obat2', child: Text('Sumber 2')),
                      DropdownMenuItem(value: 'obat3', child: Text('Sumber 3')),
                      DropdownMenuItem(value: 'obat4', child: Text('Sumber 4')),
                    ],
                    onChanged: (value) {},
                    errorText: null,
                  ),
                  const SizedBox(height: 24),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        'Berapa jumlah obat awal/utuh (saat masih baru belum diminum)?'),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: SepoDropdown(
                          hint: 'Nama Obat',
                          items: const [
                            DropdownMenuItem(
                                value: 'obat1', child: Text('Nama Obat 1')),
                            DropdownMenuItem(
                                value: 'obat2', child: Text('Nama Obat 2')),
                            DropdownMenuItem(
                                value: 'obat3', child: Text('Nama Obat 3')),
                            DropdownMenuItem(
                                value: 'obat4', child: Text('Nama Obat 4')),
                          ],
                          onChanged: (value) {},
                          errorText: null,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: SepoTextField(
                          label: 'Jumlah',
                          onChanged: (value) {

                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.add), Text('Tambah Obat')],
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        'Berapa sisa obat saat ini?'),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: SepoDropdown(
                          hint: 'Nama Obat',
                          items: const [
                            DropdownMenuItem(
                                value: 'obat1', child: Text('Nama Obat 1')),
                            DropdownMenuItem(
                                value: 'obat2', child: Text('Nama Obat 2')),
                            DropdownMenuItem(
                                value: 'obat3', child: Text('Nama Obat 3')),
                            DropdownMenuItem(
                                value: 'obat4', child: Text('Nama Obat 4')),
                          ],
                          onChanged: (value) {},
                          errorText: null,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: SepoTextField(
                          label: 'Jumlah',
                          onChanged: (value) {

                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  OutlinedButton(
                    onPressed: () {},
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
