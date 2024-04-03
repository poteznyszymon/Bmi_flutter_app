import 'package:bmi_app_2/providers/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../consts/colors.dart';

class GenderButtons extends StatefulWidget {
  const GenderButtons({
    super.key,
  });

  @override
  State<GenderButtons> createState() => _GenderButtonsState();
}

bool maleActive = true;
bool femaleActive = false;

class _GenderButtonsState extends State<GenderButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: maleActive
                    ? CustomColors.inactiveBlue
                    : CustomColors.backgroundColor,
                border: Border.all(
                  color: maleActive
                      ? CustomColors.activeBlue
                      : CustomColors.inactiveGrey,
                  width: 2,
                ),
              ),
              height: MediaQuery.of(context).size.height / 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.male,
                    color: maleActive
                        ? CustomColors.activeBlue
                        : CustomColors.activeGrey,
                    size: 80,
                  ),
                  Text(
                    'Male',
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: CustomColors.fontColor,
                    ),
                  )
                ],
              ),
            ),
            onTap: () {
              context.read<DataProvider>().chagneGender(newGender: 1);
              setState(() {
                maleActive = true;
                femaleActive = false;
              });
            },
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.height * 0.02),
        Expanded(
          child: GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: femaleActive
                    ? CustomColors.inactiveBlue
                    : CustomColors.backgroundColor,
                border: Border.all(
                  color: femaleActive
                      ? CustomColors.activeBlue
                      : CustomColors.inactiveGrey,
                  width: 2,
                ),
              ),
              height: MediaQuery.of(context).size.height / 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.female,
                    color: femaleActive
                        ? CustomColors.activeBlue
                        : CustomColors.activeGrey,
                    size: 80,
                  ),
                  Text(
                    'Female',
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: CustomColors.fontColor,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              context.read<DataProvider>().chagneGender(newGender: 2);
              setState(() {
                femaleActive = true;
                maleActive = false;
              });
            },
          ),
        ),
      ],
    );
  }
}
