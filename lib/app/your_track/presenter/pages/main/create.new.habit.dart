import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:your_track/app/your_track/extra/const/colors.dart';
import 'package:your_track/app/your_track/presenter/widgets/input/extra.input.dart';
import 'package:your_track/app/your_track/presenter/widgets/navigation/new_habit.dart';
import 'package:your_track/app/your_track/presenter/widgets/selection/check_box.dart';

import '../../../extra/const/fonts.dart';

class CreateNewHabit extends StatefulWidget {
  const CreateNewHabit({super.key});

  @override
  State<CreateNewHabit> createState() => _CreateNewHabitState();
}

class _CreateNewHabitState extends State<CreateNewHabit> {
  @override
  Widget build(BuildContext context) {
    var requencyItems = ["Daily", "Weekly", "Monthly"];
    var dayOfWeekItems = ["M", "T", "W", "T", "F", "S", "S"];
    return Scaffold(
      backgroundColor: ExtraColors.neutralWhite,
      appBar: NavigationNewHabit(
        backgroundColor: ExtraColors.neutralWhite,
        onExitClick: () {
          Modular.to.pop(context);
        },
        onSaveClick: () {
          // Modular.to.pop(context);
          Modular.to.pushNamed("/home");
        },
        title: 'New Habit',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(child: Image.asset("assets/images/NewHabit.png")),
              ExtraInput(
                control: TextEditingController(),
                label: "Name",
                hint: "Enter name your habit",
                primaryColor: ExtraColors.semainticTopaz,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Color theme",
                      style: ExtraFonts.bodySemiBold14.copyWith(
                        color: ExtraColors.neutralSliver,
                      ),
                    ),
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                          color: ExtraColors.semainticTopaz,
                          borderRadius: BorderRadius.circular(90)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Set end date or goal amount",
                      style: ExtraFonts.bodySemiBold14.copyWith(
                        color: ExtraColors.neutralSliver,
                      ),
                    ),
                    CheckBox(isChecked: true, onChange: (r) => {}),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                ...requencyItems.map(
                  (e) => InkWell(
                    borderRadius: BorderRadius.circular(90),
                    focusColor: ExtraColors.primary,
                    onTap: () => {},
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 12),
                        decoration: BoxDecoration(
                            color: ExtraColors.neutralSliver.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(90)),
                        child: Text(e,
                            style: ExtraFonts.bodySemiBold14
                                .copyWith(color: ExtraColors.neutralSliver))),
                  ),
                )
              ]),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Repeat everyday",
                      style: ExtraFonts.bodySemiBold14.copyWith(
                        color: ExtraColors.neutralSliver,
                      ),
                    ),
                    CheckBox(isChecked: false, onChange: (r) => {}),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                ...dayOfWeekItems.map(
                  (e) => InkWell(
                    borderRadius: BorderRadius.circular(100),
                    focusColor: ExtraColors.primary,
                    onTap: () => {},
                    child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ExtraColors.neutralSliver.withOpacity(0.1),
                        ),
                        child: Text(e,
                            style: ExtraFonts.bodySemiBold14
                                .copyWith(color: ExtraColors.neutralSliver))),
                  ),
                )
              ]),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Get reminders",
                      style: ExtraFonts.bodySemiBold14.copyWith(
                        color: ExtraColors.neutralSliver,
                      ),
                    ),
                    Switch(
                      value: false,
                      onChanged: (val) => {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
