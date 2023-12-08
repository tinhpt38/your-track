import 'package:flutter/material.dart';

import 'not_progress/not_progress.dart';
import 'progress/progress.dart';

class ListTask extends StatefulWidget {
  const ListTask({super.key, required this.index, required this.isCategory});
  final int index;

  final bool isCategory;

  @override
  State<ListTask> createState() => _ListTaskState();
}

class _ListTaskState extends State<ListTask> {
  @override
  Widget build(BuildContext context) {
    if (widget.index == 0) {
      return InProgress(
        isCategory: widget.isCategory,
        items: ['Drink water', 'Read Book'],
      );
    } else if (widget.index == 1) {
      return NotProgress(isCategory: widget.isCategory, items: ['1', '2']);
    } else {
      return NotProgress(isCategory: widget.isCategory, items: ['1', '2']);
    }
  }
}
