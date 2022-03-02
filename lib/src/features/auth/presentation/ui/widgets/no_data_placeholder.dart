import 'package:flutter/material.dart';
import 'package:template_app/generated/l10n.dart';

class NoDataPlaceholder extends StatelessWidget {
  const NoDataPlaceholder({
    Key? key,
    required this.onDataRequested,
  }) : super(key: key);

  final void Function() onDataRequested;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('No data'),
        ElevatedButton(
          onPressed: onDataRequested,
          child: Text(S.of(context).tryAgain),
        ),
      ],
    );
  }
}
