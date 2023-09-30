import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:your_track/app/your_track/extra/const/icons.dart';
import 'package:your_track/app/your_track/presenter/widgets/tab_view/tab_view_item.dart';

import 'tab_view_task/list_task.dart';

class TabView extends StatefulWidget {
  const TabView({super.key, required this.isTask});
  final bool isTask;
  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  int index = 0;
  bool isCategory = true;
  Map<int, String> itemTaskList = {
    0: 'In progress',
    1: 'Completed',
    2: 'Overdue'
  };
  Map<int, String> itemTimeList = {0: 'Daily', 1: 'Weekly', 2: 'Monthly'};

  Map<int, String> itemTab() {
    return widget.isTask ? itemTaskList : itemTimeList;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...itemTab().entries.map(
                    (item) => InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          index = item.key;
                        });
                      },
                      child: TabViewItem(
                        size: size,
                        isActive: index == item.key,
                        text: item.value,
                      ),
                    ),
                  ),
              widget.isTask
                  ? InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          isCategory = !isCategory;
                        });
                      },
                      child: SvgPicture.asset(
                        width: 30,
                        height: 30,
                        isCategory ? ExtraIcons.category : ExtraIcons.document,
                      ),
                    )
                  : Container()
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(child: _content())
        ],
      ),
    );
  }

  Widget _content() {
    if (widget.isTask) {
      return ListTask(index: index, isCategory: isCategory);
    } else {
      return const Center(
        child: Text('Time'),
      );
    }
  }
}
