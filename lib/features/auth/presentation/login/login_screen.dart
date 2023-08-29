import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sepo_app/common/constants/colors.dart';
import 'package:sepo_app/common/widgets/sepo_button.dart';

import '../../../../utils/snackbar_utils.dart';
import '../../models/email_text_input.dart';
import 'login_controller.dart';

enum SepoTextFieldType { normal, email, password }

class SepoTextField extends StatefulWidget {
  const SepoTextField({
    super.key,
    this.type = SepoTextFieldType.normal,
    required this.label,
    this.action,
    this.controller,
    this.maxLines = 1,
    this.errorText,
    this.onChanged,
    this.enabled = true,
    this.initialText,
  });

  final TextEditingController? controller;
  final String? initialText;
  final SepoTextFieldType type;
  final String label;
  final TextInputAction? action;
  final int maxLines;
  final String? errorText;
  final Function(String)? onChanged;
  final bool enabled;

  @override
  State<SepoTextField> createState() => _SepoTextFieldState();
}

class _SepoTextFieldState extends State<SepoTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          label: Text(widget.label),
        ),
      ),
    );
  }
}

class LoginScreen extends ConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginControllerProvider);

    ref.listen(
      loginControllerProvider.select((value) => value.shouldVerifyEmail),
      (previous, shouldVerifyEmail) {
        if (shouldVerifyEmail) {
          final email = (ref.read(loginControllerProvider).emailTextInput
                  as EmailTextInput)
              .value;
          context.pushNamed('verification', extra: email);
          ref
              .read(loginControllerProvider.notifier)
              .setShouldVerifyEmail(false);
        }
      },
    );

    ref.listen(
      loginControllerProvider.select((value) => value.errorMessage),
      (previous, next) {
        if (next != null && context.mounted) {
          showSnackbar(context, message: next, type: SnackbarType.error);
        }
        ref.read(loginControllerProvider.notifier).setErrorMessage(null);
      },
    );

    ref.listen(
      loginControllerProvider.select((value) => value.successMessage),
      (previous, next) {
        if (next != null && context.mounted) {
          showSnackbar(context, message: next);
        }
        ref.read(loginControllerProvider.notifier).setSuccessMessage(null);
      },
    );

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: Image.asset('assets/images/app_logo.png'),
                ),
                const SizedBox(height: 32),
                Text(
                  'Selamat Datang Kembali',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Masukkan email dan kata sandi anda',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: kColorNeutral50),
                ),
                const SizedBox(height: 32),
                const SizedBox(height: 16),
                SepoTextField(
                  label: 'Email',
                  onChanged: (value) => ref
                      .read(loginControllerProvider.notifier)
                      .onEmailChange(value),
                  errorText: state.emailTextInput.isPure
                      ? null
                      : state.emailTextInput.error?.getErrorMessage(),
                ),
                const SizedBox(height: 16),
                SepoTextField(
                  label: 'Kata Sandi',
                  onChanged: (value) => ref
                      .read(loginControllerProvider.notifier)
                      .onPasswordChange(value),
                  errorText: state.passwordTextInput.isPure
                      ? null
                      : state.passwordTextInput.error?.getErrorMessage(),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () {},
                    child: const Text('Lupa kata sandi anda?'),
                  ),
                ),
                const SizedBox(height: 32),
                SepoButton(
                  label: 'Masuk',
                  loading: state.isSubmitting,
                  disabled: !state.validated,
                  onPressed: () {
                    if (!context.mounted) return;
                    ref.read(loginControllerProvider.notifier).onSubmit();
                  },
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    const Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Atau masuk dengan',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: kColorNeutral50),
                      ),
                    ),
                    const Expanded(child: Divider()),
                  ],
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 32,
                      width: 32,
                      child: Image.asset('assets/images/google_logo.png'),
                    ),
                    SizedBox(
                      height: 32,
                      width: 32,
                      child: Image.asset('assets/images/facebook_logo.png'),
                    ),
                    SizedBox(
                      height: 32,
                      width: 32,
                      child: Image.asset('assets/images/twitter_logo.png'),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Belum memiliki akun?',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: kColorNeutral100),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () => context.pushReplacementNamed('register'),
                      child: const Text('Daftar'),
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
