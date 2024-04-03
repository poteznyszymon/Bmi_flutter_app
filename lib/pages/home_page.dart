import 'package:bmi_app_2/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/age_widget.dart';
import '../widgets/button_widget.dart';
import '../widgets/gender_buttons.dart';
import '../widgets/height_widget.dart';
import '../widgets/weight_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

double titleTextSize = 28.0;
double smallTextSize = 18.0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.backgroundColor,
        elevation: 0,
        titleSpacing: 20,
        toolbarHeight: 60,
        title: Text(
          'BMI Calculator',
          style: GoogleFonts.inter(
              color: CustomColors.fontColor,
              fontWeight: FontWeight.bold,
              fontSize: titleTextSize),
        ),
      ),
      backgroundColor: CustomColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            SizedBox(
              child: Center(
                child: Text(
                  'Gender',
                  style: GoogleFonts.inter(
                    fontSize: smallTextSize,
                    color: CustomColors.fontColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            const GenderButtons(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            SizedBox(
              child: Center(
                child: Text(
                  'Height (cm)',
                  style: GoogleFonts.inter(
                    fontSize: smallTextSize,
                    color: CustomColors.fontColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            const HeightWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Age',
                  style: GoogleFonts.inter(
                    fontSize: smallTextSize,
                    color: CustomColors.fontColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Weight (kg)',
                  style: GoogleFonts.inter(
                    fontSize: smallTextSize,
                    color: CustomColors.fontColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            SizedBox(
              height: MediaQuery.of(context).size.height / 9,
              child: Row(
                children: [
                  const AgeWidget(),
                  SizedBox(width: MediaQuery.of(context).size.height * 0.02),
                  const WeightWidget(),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            const ButtonWidget(),
          ],
        ),
      ),
    );
  }
}
