import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:your_track/app/your_track/extra/const/colors.dart';
import 'package:your_track/app/your_track/extra/const/fonts.dart';
import 'package:your_track/app/your_track/extra/const/icons.dart';
import 'package:your_track/app/your_track/presenter/widgets/progress_bar/progress_bar.dart';
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
                  childAspectRatio: 1,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: items.length,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  padding: const EdgeInsets.only(left: 12),
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: ExtraColors.darkViolet,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: ExtraColors.semainticRed,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          child: Image.asset("assets/images/3.png", width: 32)),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Text(items[index],
                            style: ExtraFonts.headingBold16
                                .copyWith(color: ExtraColors.neutralGreen)),
                      ),
                      Text("Lorem",
                          style: ExtraFonts.bodySemiBold14
                              .copyWith(color: ExtraColors.neutralGreen)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Text("5/20",
                                textAlign: TextAlign.right,
                                style: ExtraFonts.captionBold12
                                    .copyWith(color: ExtraColors.primary)),
                          ),
                        ],
                      ),
                      const Spacer(),
                      ProgressBar(percent: 0.5, type: Random().nextInt(5)),
                      const SizedBox(
                        height: 32,
                      )
                    ],
                  ),
                );
              }),
        ],
      ),
    );
  }
}
