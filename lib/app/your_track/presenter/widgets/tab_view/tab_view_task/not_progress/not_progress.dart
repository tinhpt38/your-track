import 'package:flutter/material.dart';

import 'grid_view_not_progress.dart';
import 'list_view_not_progress.dart';

class NotProgress extends StatelessWidget {
  const NotProgress({super.key, required this.isCategory, required this.items});
  final bool isCategory;
  final List items;
  @override
  Widget build(BuildContext context) {
    if (isCategory) {
      return _isCategory(items);
    } else {
      return _isDocument(items);
    }
  }

  Widget _isCategory(List items) {
    return GridViewNotProgress(
      items: items,
    );
  }

  Widget _isDocument(List items) {
    return ListViewNotProgress(
      items: items,
    );
  }
}
