import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:your_track/app/your_track/extra/const/fonts.dart';
import 'package:your_track/app/your_track/presenter/widgets/buttons/primary.dart';
import 'package:your_track/app/your_track/presenter/widgets/buttons/only_icon.dart';
import 'package:your_track/app/your_track/presenter/widgets/drop_down/drop_down.dart';
import 'package:your_track/app/your_track/presenter/widgets/navigation/back.dart';
import 'package:your_track/app/your_track/presenter/widgets/navigation/edit.dart';
import 'package:your_track/app/your_track/presenter/widgets/navigation/new_habit.dart';
import 'package:your_track/app/your_track/presenter/widgets/tab_view/tab_view.dart';

import '../../extra/const/colors.dart';
import '../../extra/const/icons.dart';
import '../widgets/buttons/circle_icon.dart';
import '../widgets/buttons/seconday.dart';
import '../widgets/buttons/texticon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //use for Dropdown component
  List<String> items = [
    'Today',
    'Last 7 days',
    'Last 30 days',
    'Last 3 months',
    'Last 1 year'
  ];

  String itemSelected = '';
  bool isOpen = false;

  void onChange(String? value) {
    setState(() {
      itemSelected = value!;
    });
  }

  void onMenuStateChange(bool value) {
    setState(() {
      isOpen = value;
    });
  }
  ////////////////////////////////

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: ExtraColors.neutralWhite,
        appBar: NavigationEdit(
          backgroundColor: ExtraColors.background,
          title: '',
          onDeleteClick: () {},
          onEditClick: () {},
          onPauseClick: () {},
          onExitClick: () {},
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // SecondaryButton(
              //   label: "Let do it",
              //   onPress: () {},
              // ),
              // const SizedBox(
              //   height: 40,
              // ),
              // PrimaryButton(
              //   label: "Let do it",
              //   onPress: () {},
              // ),
              // const SizedBox(
              //   height: 40,
              // ),
              // TextIconButton(
              //   label: "Email",
              //   iconPath: ExtraIcons.message,
              //   onPress: () {},
              // ),
              const SizedBox(
                height: 40,
              ),
              CicleIconButton(
                onPress: () {},
                iconPath: ExtraIcons.plus,
              ),
              const SizedBox(
                height: 40,
              ),
              DropDown(
                  width: size.width,
                  items: items,
                  itemSelected: itemSelected,
                  onChange: onChange,
                  isOpen: isOpen,
                  onMenuStateChange: onMenuStateChange),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropDown(
                      isLarge: false,
                      width: size.width,
                      items: items,
                      itemSelected: itemSelected,
                      onChange: onChange,
                      isOpen: isOpen,
                      onMenuStateChange: onMenuStateChange),
                  DropDown(
                      isLarge: false,
                      width: size.width,
                      items: items,
                      itemSelected: itemSelected,
                      onChange: onChange,
                      isOpen: isOpen,
                      onMenuStateChange: onMenuStateChange),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const TabView(
                isTask: false,
              ),
              const SizedBox(
                height: 20,
              ),
              const TabView(
                isTask: true,
              ),
            ],
          ),
        ));
  }
}
