import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:your_track/app/your_track/extra/const/colors.dart';
import 'package:your_track/app/your_track/presenter/widgets/input/extra.input.dart';
import 'package:your_track/app/your_track/presenter/widgets/navigation/new_habit.dart';

import '../../../extra/const/fonts.dart';

class CreateNewHabit extends StatefulWidget {
  const CreateNewHabit({super.key});

  @override
  State<CreateNewHabit> createState() => _CreateNewHabitState();
}

class _CreateNewHabitState extends State<CreateNewHabit> {
  @override
  Widget build(BuildContext context) {
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
