import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:your_track/app/your_track/extra/const/fonts.dart';
import 'package:your_track/app/your_track/presenter/widgets/buttons/primary.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../extra/const/colors.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: CustomPaint(
                painter: OnboardingPaint(),
              ),
            ),
            Positioned(
              top: size.height * 1 / 5,
              left: 32,
              right: 32,
              child: Image.asset(
                "assets/images/1.png",
              ),
            ),
            Positioned(
                bottom: size.height * 0.1,
                left: 24,
                right: 0,
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Text(AppLocalizations.of(context)?.appName ?? "",
                            style: ExtraFonts.headingBold16.copyWith(
                                foreground: Paint()
                                  ..shader = LinearGradient(
                                    colors: <Color>[
                                      ExtraColors.violet,
                                      ExtraColors.darkViolet,
                                    ],
                                  ).createShader(const Rect.fromLTWH(
                                      0.0, 0.0, 200.0, 70.0)))),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          AppLocalizations.of(context)?.onBoarding ?? "",
                          style: ExtraFonts.titleBold30
                              .copyWith(color: ExtraColors.neutralGreen),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          AppLocalizations.of(context)?.onBoardingDescription ??
                              "",
                          style: ExtraFonts.bodyMedium14
                              .copyWith(color: ExtraColors.neutralSliver),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: PrimaryButton(
                          onPress: () {},
                          label:
                              AppLocalizations.of(context)?.onBoadingAction ??
                                  "",
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class OnboardingPaint extends CustomPainter {
  OnboardingPaint();
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = ExtraColors.secondary
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    var paintWhite = Paint()
      ..color = ExtraColors.neutralWhite
      ..style = PaintingStyle.fill;

    Path path_0 = Path();
    path_0.moveTo(0, 0); //top-left
    path_0.lineTo(size.width * 1, size.height * 0);
    path_0.lineTo(size.width * 1, size.height * 0.25); // ch: 0.25 -> 0.35
    path_0.lineTo(size.width * 0.00, size.height * 0.15);
    canvas.drawPath(path_0, paint);

    Path path_1 = Path();

    path_1.moveTo(size.width * 0, size.height * 0.15); //top-left
    path_1.lineTo(size.width * 1, size.height * 0.25); //ch: 0.25 -> 0.35
    path_1.lineTo(size.width * 1, size.height * 0.55); //ch: 0.55 -> 0.65
    path_1.lineTo(size.width * 0, size.height * 0.45); // ch: 0.45 - 0.55
    canvas.drawPath(path_1, paintWhite);

    Path path_2 = Path();
    path_2.moveTo(
        size.width * 0, size.height * 0.45); //top-left // ch: 0.45 -> 0.55
    path_2.lineTo(size.width * 1, size.height * 0.55); //ch: 0.55 -> 0.65
    path_2.lineTo(size.width * 1, size.height * 1);
    path_2.lineTo(size.width * 0, size.height * 1);
    canvas.drawPath(path_2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
