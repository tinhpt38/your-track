import 'package:flutter/material.dart';

class ListViewNotProgress extends StatelessWidget {
  const ListViewNotProgress({super.key, required this.items});
  final List items;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(15)),
            child: Text(items[index]),
          );
        });
  }
}
