import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final itemDetailsProvider = Provider((ref) => 'Item Details');

/// Displays detailed information about a Item.
class ItemDetailsPage extends ConsumerWidget {
  const ItemDetailsPage({Key? key}) : super(key: key);

  static const routeName = '/sample_item';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final details = ref.watch(itemDetailsProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(details),
      ),
      body: const Center(
        child: Text('More Information Here'),
      ),
    );
  }
}
