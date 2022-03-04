import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:template_app/generated/l10n.dart';
import 'package:template_app/src/app/routing/app_router.gr.dart';

class ProfileInfoPage extends StatelessWidget {
  const ProfileInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              S.of(context).profileInfo,
              textAlign: TextAlign.center,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () => AutoRouter.of(context).push(const ProfileEditingRoute()),
                child: Text(S.of(context).profileEditing),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
