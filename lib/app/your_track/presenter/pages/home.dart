import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:your_track/app/your_track/extra/const/fonts.dart';
import 'package:your_track/app/your_track/presenter/widgets/buttons/primary.dart';
import 'package:your_track/app/your_track/presenter/widgets/buttons/only_icon.dart';
import 'package:your_track/app/your_track/presenter/widgets/navigation/back.dart';
import 'package:your_track/app/your_track/presenter/widgets/navigation/edit.dart';
import 'package:your_track/app/your_track/presenter/widgets/navigation/new_habit.dart';

import '../../extra/const/colors.dart';
import '../../extra/const/icons.dart';
import '../widgets/buttons/circle_icon.dart';
import '../widgets/buttons/seconday.dart';
import '../widgets/buttons/texticon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NavigationEdit(
          backgroundColor: ExtraColors.background,
          title: '',
          onDeleteClick: () {
            print('on click filter');
          },
          onEditClick: () {
            print('on click filter');
          },
          onPauseClick: () {
            print('on click filter');
          },
          onExitClick: () {
            print('on click filter');
          },
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SecondaryButton(
                label: "Let do it",
                onPress: () {
                  print("click butotn");
                },
              ),
              PrimaryButton(
                label: "Let do it",
                onPress: () {
                  print("click butotn");
                },
              ),
              TextIconButton(
                label: "Email",
                iconPath: ExtraIcons.message,
                onPress: () {
                  print("click butotn");
                },
              ),
              CicleIconButton(
                onPress: () {},
                iconPath: ExtraIcons.plus,
              )
            ],
          ),
        ));
  }
}
