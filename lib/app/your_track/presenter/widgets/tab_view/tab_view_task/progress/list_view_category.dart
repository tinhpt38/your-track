import 'package:flutter/material.dart';

import 'title_progress.dart';

class ListViewCategory extends StatelessWidget {
  const ListViewCategory({super.key, required this.items, required this.title});
  final List items;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          TitleProgress(
            text: title,
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(items[index]),
                );
              }),
        ],
      ),
    );
  }
}
