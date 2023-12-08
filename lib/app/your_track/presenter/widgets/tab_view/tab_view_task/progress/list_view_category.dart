import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../../extra/const/colors.dart';
import '../../../../../extra/const/fonts.dart';
import '../../../progress_bar/progress_bar.dart';
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
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
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
                              child: Image.asset("assets/images/3.png",
                                  width: 32)),
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
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
