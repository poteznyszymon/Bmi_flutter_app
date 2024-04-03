import 'package:bmi_app_2/providers/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../consts/colors.dart';

class HeightWidget extends StatefulWidget {
  const HeightWidget({super.key});

  @override
  State<HeightWidget> createState() => _HeightWidgetState();
}

int _height = 180;

class _HeightWidgetState extends State<HeightWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: CustomColors.inactiveGrey, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                _height -= 1;
              });
              context.read<DataProvider>().changeHeight(newHeight: _height);
            },
            icon: const Icon(
              Icons.remove_circle_outline,
              size: 30,
            ),
          ),
          Text(
            context.watch<DataProvider>().height.toString(),
            style: GoogleFonts.inter(fontSize: 45, fontWeight: FontWeight.w500),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _height += 1;
              });
              context.read<DataProvider>().changeHeight(newHeight: _height);
            },
            icon: const Icon(
              Icons.add_circle_outline_outlined,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
