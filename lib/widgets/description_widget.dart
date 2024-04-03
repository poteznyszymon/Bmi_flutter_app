import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../consts/colors.dart';
import '../providers/data_provider.dart';

class DesctriptionWidget extends StatefulWidget {
  const DesctriptionWidget({
    super.key,
  });

  @override
  State<DesctriptionWidget> createState() => _DesctriptionWidgetState();
}

class _DesctriptionWidgetState extends State<DesctriptionWidget> {
  late DataProvider dataProvider;
  double smallTextSize = 16.0;
  String bmi = '';

  @override
  void initState() {
    dataProvider = Provider.of<DataProvider>(context, listen: false);
    int weight = dataProvider.weight;
    double heightInMeters = dataProvider.height / 100;
    bmi = (weight / (heightInMeters * heightInMeters)).toStringAsFixed(1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      decoration: BoxDecoration(
        border: Border.all(color: CustomColors.activeGrey),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'A BMI of',
                  style: GoogleFonts.inter(
                      fontSize: smallTextSize,
                      fontWeight: FontWeight.w500,
                      color: CustomColors.fontColor),
                ),
                Text(
                  ' ${bmi} ',
                  style: GoogleFonts.inter(
                      fontSize: smallTextSize,
                      fontWeight: FontWeight.w600,
                      color: CustomColors.activeBlue),
                ),
                Text(
                  'indicates that your',
                  style: GoogleFonts.inter(
                      fontSize: smallTextSize,
                      fontWeight: FontWeight.w500,
                      color: CustomColors.fontColor),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'weight is in the',
                  style: GoogleFonts.inter(
                      fontSize: smallTextSize,
                      fontWeight: FontWeight.w500,
                      color: CustomColors.fontColor),
                ),
                Text(
                  ' normal ',
                  style: GoogleFonts.inter(
                      fontSize: smallTextSize,
                      fontWeight: FontWeight.w600,
                      color: CustomColors.activeBlue),
                ),
                Text(
                  'category for a',
                  style: GoogleFonts.inter(
                      fontSize: smallTextSize,
                      fontWeight: FontWeight.w500,
                      color: CustomColors.fontColor),
                ),
              ],
            ),
            Text(
              'person of your height',
              style: GoogleFonts.inter(
                  fontSize: smallTextSize,
                  fontWeight: FontWeight.w500,
                  color: CustomColors.fontColor),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text(
              'Maintaining a healthy weight reduce the',
              style: GoogleFonts.inter(
                  fontSize: smallTextSize,
                  fontWeight: FontWeight.w500,
                  color: CustomColors.fontColor),
            ),
            Text(
              'risk of diseases associated with',
              style: GoogleFonts.inter(
                  fontSize: smallTextSize,
                  fontWeight: FontWeight.w500,
                  color: CustomColors.fontColor),
            ),
            Text(
              'overweight and obesity.',
              style: GoogleFonts.inter(
                  fontSize: smallTextSize,
                  fontWeight: FontWeight.w500,
                  color: CustomColors.fontColor),
            ),
          ],
        ),
      ),
    );
  }
}
