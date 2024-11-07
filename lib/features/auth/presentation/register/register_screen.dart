import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/constants/colors.dart';
import '../../../../common/widgets/sepo_button.dart';
import '../../../../utils/snackbar_utils.dart';
import '../../presentation/login/login_screen.dart';
import 'register_controller.dart';

class RegisterScreen extends ConsumerWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      registerControllerProvider.select((value) => value.errorMessage),
      (previous, next) {
        if (next != null && context.mounted) {
          showSnackbar(context, message: next, type: SnackbarType.error);
        }
        ref.read(registerControllerProvider.notifier).setErrorMessage(null);
      },
    );

    ref.listen(
      registerControllerProvider.select((value) => value.successMessage),
      (previous, next) {
        if (next != null && context.mounted) {
          showSnackbar(context, message: next);
          final email =
              ref.read(registerControllerProvider).emailTextInput.value;

          context.goNamed(
            'verification',
            extra: email,
          );
        }
        ref.read(registerControllerProvider.notifier).setSuccessMessage(null);
      },
    );

    final state = ref.watch(registerControllerProvider);

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50),
                Text(
                  'Daftar',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Buat akun barumu',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: kColorNeutral50),
                ),
                const SizedBox(height: 32),
                const SizedBox(height: 16),
                SepoTextField(
                  label: 'Nama Lengkap',
                  onChanged: (value) => ref
                      .read(registerControllerProvider.notifier)
                      .onNameChange(value),
                  errorText: state.nameTextInput.isPure
                      ? null
                      : state.nameTextInput.error?.getErrorMessage(),
                ),
                const SizedBox(height: 16),
                SepoTextField(
                  label: 'Email',
                  onChanged: (value) => ref
                      .read(registerControllerProvider.notifier)
                      .onEmailChange(value),
                  type: SepoTextFieldType.email,
                  errorText: state.emailTextInput.isPure
                      ? null
                      : state.emailTextInput.error?.getErrorMessage(),
                ),
                const SizedBox(height: 16),
                SepoTextField(
                  label: 'Kata Sandi',
                  onChanged: (value) => ref
                      .read(registerControllerProvider.notifier)
                      .onPasswordChange(value),
                  type: SepoTextFieldType.password,
                  errorText: state.passwordTextInput.isPure
                      ? null
                      : state.passwordTextInput.error?.getErrorMessage(),
                ),
                const SizedBox(height: 32),
                SepoButton(
                  label: 'Daftar',
                  loading: state.isSubmitting,
                  disabled: !state.validated,
                  onPressed: () =>
                      ref.read(registerControllerProvider.notifier).onSubmit(),
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    const Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Atau daftar dengan',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: kColorNeutral50),
                      ),
                    ),
                    const Expanded(child: Divider()),
                  ],
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Sudah memiliki akun?'),
                    TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () => context.pushReplacementNamed('login'),
                      child: const Text('Masuk'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
