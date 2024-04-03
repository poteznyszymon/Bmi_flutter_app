import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../consts/colors.dart';
import '../providers/data_provider.dart';

class ResultsWidget extends StatefulWidget {
  const ResultsWidget({
    super.key,
  });

  @override
  State<ResultsWidget> createState() => _ResultsWidgetState();
}

class _ResultsWidgetState extends State<ResultsWidget> {
  late DataProvider dataProvider;
  double titleTextSize = 28.0;
  double smallTextSize = 18.0;
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
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4,
      child: Column(
        children: [
          Text(
            'Your BMI is',
            style: GoogleFonts.inter(
              fontSize: smallTextSize,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: CustomColors.activeBlue,
            ),
            height: MediaQuery.of(context).size.height / 8,
            width: MediaQuery.of(context).size.height / 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  bmi,
                  style: GoogleFonts.inter(
                    fontSize: 30,
                    color: CustomColors.backgroundColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'kg/m2',
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    color: CustomColors.backgroundColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Text(
            (double.parse(bmi) < 18.5)
                ? 'Underwieght'
                : (double.parse(bmi) < 24.9)
                    ? 'Normal'
                    : (double.parse(bmi) < 29.9)
                        ? 'Overwieght'
                        : 'Obesity',
            style: GoogleFonts.inter(
              fontSize: smallTextSize,
              fontWeight: FontWeight.w600,
              color: CustomColors.fontColor,
            ),
          ),
        ],
      ),
    );
  }
}
