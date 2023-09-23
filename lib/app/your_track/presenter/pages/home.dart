import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:your_track/app/your_track/extra/const/fonts.dart';

import '../../extra/const/icons.dart';
import '../widgets/navigation/default.dart';
import '../widgets/users/avatar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavigationDefault(
        onClickFilter: () {
          print('on click filter');
        },
      ),
      body: const Center(
        child: Text('this is initial page'),
      ),
    );
  }
}
