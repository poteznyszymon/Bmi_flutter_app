import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:wheel_slider/wheel_slider.dart';
import '../consts/colors.dart';
import '../providers/data_provider.dart';

class WeightWidget extends StatefulWidget {
  const WeightWidget({
    super.key,
  });

  @override
  State<WeightWidget> createState() => _WeightWidgetState();
}

int _weight = 80;

class _WeightWidgetState extends State<WeightWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: CustomColors.inactiveGrey, width: 2),
        ),
        child: WheelSlider.number(
            perspective: 0.01,
            selectedNumberStyle:
                GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w600),
            unSelectedNumberStyle: GoogleFonts.inter(fontSize: 18),
            totalCount: 150,
            initValue: _weight,
            onValueChanged: (val) {
              setState(() {
                _weight = val;
              });
              context.read<DataProvider>().changeWeight(newWeight: _weight);
            },
            currentIndex: _weight),
      ),
    );
  }
}
