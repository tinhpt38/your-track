import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:your_track/app/your_track/extra/const/fonts.dart';
import 'package:your_track/app/your_track/presenter/widgets/navigation/back.dart';
import 'package:your_track/app/your_track/presenter/widgets/navigation/edit.dart';
import 'package:your_track/app/your_track/presenter/widgets/navigation/new_habit.dart';

import '../../extra/const/colors.dart';
import '../../extra/const/icons.dart';
import '../widgets/navigation/default.dart';
import '../widgets/navigation/habit.dart';
import '../widgets/users/avatar.dart';

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
      body: const Center(
        child: Text('this is initial page'),
      ),
    );
  }
}
