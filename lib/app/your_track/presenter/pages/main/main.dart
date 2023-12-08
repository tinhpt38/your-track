import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:your_track/app/your_track/extra/const/fonts.dart';
import 'package:your_track/app/your_track/extra/const/icons.dart';
import 'package:your_track/app/your_track/presenter/widgets/users/avatar.dart';

import '../../../extra/const/colors.dart';
import '../../widgets/buttons/texticon.dart';
import '../../widgets/navigation/default.dart';
import '../../widgets/tab_view/tab_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ExtraColors.neutralWhite,
      drawerEnableOpenDragGesture: false,
      appBar: NavigationDefault(
        title: "Today",
        backgroundColor: Colors.white,
        onFilterClick: (it) {
          Scaffold.of(it).openDrawer();
        },
      ),
      body: Column(
        children: [
          CalendarTimeline(
            initialDate: DateTime(2020, 4, 20),
            firstDate: DateTime(2019, 1, 15),
            lastDate: DateTime(2030, 12, 31),
            onDateSelected: (date) => print(date),
            leftMargin: 20,
            monthColor: Colors.blueGrey,
            dayColor: Colors.teal[200],
            activeDayColor: Colors.white,
            activeBackgroundDayColor: ExtraColors.primary,
            dotsColor: Color(0xFF333A47),
            selectableDayPredicate: (date) => date.day != 23,
            locale: 'en_ISO',
            shrink: true,
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: TabView(
                isTask: true,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Modular.to.pushNamed("/createHabit");
        },
        child: const Icon(Icons.add),
        backgroundColor: ExtraColors.primary,
      ),
      drawer: _buildDrawer(),
    );
  }

  Widget _buildDrawer() {
    var links = [
      "Today",
      "Your stats",
      "Challenge",
      "Notifications",
      "Messages",
      "Settinsgs",
      "Help"
    ];
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 72,
            ),
            const Avatar(),
            Text("Thao Lee", style: ExtraFonts.headingSemiBold16),
            const SizedBox(
              height: 54,
            ),
            ...links.map((link) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: TextIconButton(
                    iconPath: ExtraIcons.lougout,
                    label: link,
                    onPress: () {},
                    bgColor: Colors.transparent,
                    textcolor: ExtraColors.primary,
                    iconColor: ExtraColors.primary,
                  ),
                )),
            const Spacer(),
            TextIconButton(
              iconPath: ExtraIcons.lougout,
              label: 'Log out',
              onPress: () {},
              bgColor: ExtraColors.semainticRed,
            )
          ],
        ),
      ),
    );
  }
}
