import 'package:flutter/material.dart';
import 'package:your_track/app/your_track/presenter/widgets/tab_view/tab_view_task/progress/list_view_category.dart';

import 'grid_view_progress.dart';
import 'list_view_document.dart';

class InProgress extends StatelessWidget {
  const InProgress({super.key, required this.isCategory, required this.items});
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
    return ListView(shrinkWrap: true, children: [
      GridViewProgress(
        items: items,
      ),
      const SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            ListViewCategory(items: ["Do exxercise"], title: 'Morning'),
            ListViewCategory(items: ["Mediation"], title: 'Afternoon'),
          ],
        ),
      )
    ]);
  }

  Widget _isDocument(List items) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListViewDocument(
          items: items,
          title: 'Do anytime',
        ),
        ListViewDocument(
          items: items,
          title: 'Morning',
        ),
        ListViewDocument(
          items: items,
          title: 'Afternoon',
        ),
      ],
    );
  }
}
