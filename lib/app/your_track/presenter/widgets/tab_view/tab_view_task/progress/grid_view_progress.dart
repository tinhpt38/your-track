import 'package:flutter/material.dart';
import 'package:your_track/app/your_track/presenter/widgets/tab_view/tab_view_task/progress/title_progress.dart';

class GridViewProgress extends StatelessWidget {
  const GridViewProgress({super.key, required this.items});
  final List items;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          const TitleProgress(
            text: 'Do anytime',
          ),
          const SizedBox(
            height: 10,
          ),
          GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: items.length,
              itemBuilder: (BuildContext ctx, index) {
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
