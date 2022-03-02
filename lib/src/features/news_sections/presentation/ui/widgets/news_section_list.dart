import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:template_app/src/features/news_sections/domain/entity/news_section.dart';
import 'package:template_app/src/features/news_sections/presentation/state_notifier/news_sections_state_notifier.dart';

class NewsSectionList extends ConsumerStatefulWidget {
  const NewsSectionList({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<NewsSection> items;

  @override
  ConsumerState<NewsSectionList> createState() => _NewsSectionListState();
}

class _NewsSectionListState extends ConsumerState<NewsSectionList> {
  late final RefreshController _controller;

  @override
  void initState() {
    super.initState();
    _controller = RefreshController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      controller: _controller,
      onRefresh: _onRefresh,
      child: ListView.separated(
        itemCount: widget.items.length,
        itemBuilder: (context, i) => Text(widget.items[i].id),
        separatorBuilder: (_, __) => const SizedBox(height: 8),
      ),
    );
  }

  void _onRefresh() async {
    final stateNotifier = ref.read(newsSectionsStateProvider.notifier);
    await stateNotifier.update();
    _controller.refreshCompleted();
  }
}
