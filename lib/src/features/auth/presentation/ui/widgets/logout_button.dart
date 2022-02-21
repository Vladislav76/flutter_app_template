import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/generated/l10n.dart';
import 'package:template_app/src/features/auth/presentation/state_notifier/auth_state_notifier.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) => ElevatedButton(
        onPressed: ref.read(authStateProvider.notifier).logout,
        child: Text(S.of(context).logout),
      ),
    );
  }
}
