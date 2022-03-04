import 'package:flutter/material.dart';
import 'package:template_app/generated/l10n.dart';

class ProfileEditingPage extends StatelessWidget {
  const ProfileEditingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(S.of(context).profileEditing),
        ),
      ),
    );
  }
}
