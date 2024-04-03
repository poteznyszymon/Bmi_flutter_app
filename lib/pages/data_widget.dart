import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../consts/colors.dart';
import '../providers/data_provider.dart';

class DataWidget extends StatefulWidget {
  const DataWidget({
    super.key,
  });

  @override
  State<DataWidget> createState() => _DataWidgetState();
}

class _DataWidgetState extends State<DataWidget> {
  int gender = 1;
  late DataProvider dataProvider;

  @override
  void initState() {
    dataProvider = Provider.of<DataProvider>(context, listen: false);
    gender = dataProvider.gender;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 8,
      decoration: BoxDecoration(
        border: Border.all(color: CustomColors.activeGrey),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(Icons.person_4, size: 28),
              Text(
                context.watch<DataProvider>().age.toString(),
                style: GoogleFonts.inter(
                    fontSize: 22, fontWeight: FontWeight.w600),
              ),
              Text(
                context.watch<DataProvider>().height.toString(),
                style: GoogleFonts.inter(
                    fontSize: 22, fontWeight: FontWeight.w600),
              ),
              Text(
                context.watch<DataProvider>().weight.toString(),
                style: GoogleFonts.inter(
                    fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                gender == 1 ? 'Male' : 'Female',
                style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.activeGrey),
              ),
              Text(
                'Age',
                style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.activeGrey),
              ),
              Text(
                'Height',
                style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.activeGrey),
              ),
              Text(
                'Weight',
                style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.activeGrey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
