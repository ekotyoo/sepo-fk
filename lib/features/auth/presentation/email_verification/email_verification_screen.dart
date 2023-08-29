import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import '../../../../utils/snackbar_utils.dart';
import 'email_verification_controller.dart';

class EmailVerificationScreen extends ConsumerStatefulWidget {
  const EmailVerificationScreen({super.key, this.email});

  final String? email;

  @override
  ConsumerState createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends ConsumerState<EmailVerificationScreen> {
  late OtpFieldController _controller;

  @override
  void initState() {
    super.initState();
    _controller = OtpFieldController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(emailVerificationControllerProvider);

    ref.listen(
      emailVerificationControllerProvider.select((value) => value.errorMessage),
      (previous, next) {
        if (next != null && context.mounted) {
          showSnackbar(context, message: next, type: SnackbarType.error);
          _controller.clear();
        }
        ref
            .read(emailVerificationControllerProvider.notifier)
            .setErrorMessage(null);
      },
    );

    ref.listen(
      emailVerificationControllerProvider
          .select((value) => value.successMessage),
      (previous, next) {
        if (next != null && context.mounted) {
          showSnackbar(context, message: next);
          context.pop();
        }
        ref
            .read(emailVerificationControllerProvider.notifier)
            .setSuccessMessage(null);
      },
    );

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              ..._buildHeader(context),
              const SizedBox(height: 32),
              OTPTextField(
                controller: _controller,
                length: 5,
                width: MediaQuery.of(context).size.width - 2 * 16,
                fieldWidth:
                    (MediaQuery.of(context).size.width - 2 * 16) / 6,
                style: const TextStyle(fontSize: 24),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.box,
                outlineBorderRadius: 8,
                keyboardType: TextInputType.number,
                onCompleted: (otp) {
                  final email = widget.email;
                  if (email == null) return;
                  ref.read(emailVerificationControllerProvider.notifier).onSubmit(email: email, otp: otp);
                },
              ),
              if (state.verifying)
                const Expanded(
                  child: Center(child: CircularProgressIndicator()),
                ),
            ],
          ),
        ),
      ),
    );
  }

  _buildHeader(BuildContext context) => [
        Text(
          'Verifikasi Email',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(
          'Silahkan cek email Anda dan masukkan 5 digit kode OTP untuk memverifikasi akun.',
          style: Theme.of(context)
              .textTheme
              .bodyMedium,
        ),
      ];
}
