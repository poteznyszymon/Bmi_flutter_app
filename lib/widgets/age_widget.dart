import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../consts/colors.dart';
import '../providers/data_provider.dart';

class AgeWidget extends StatefulWidget {
  const AgeWidget({
    super.key,
  });

  @override
  State<AgeWidget> createState() => _AgeWidgetState();
}

int _age = 20;

class _AgeWidgetState extends State<AgeWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
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
                  _age -= 1;
                });
                context.read<DataProvider>().changeAge(newAge: _age);
              },
              icon: const Icon(
                Icons.remove_circle_outline_outlined,
                size: 22,
              ),
            ),
            Center(
              child: Text(
                context.watch<DataProvider>().age.toString(),
                style: GoogleFonts.inter(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _age += 1;
                });
                context.read<DataProvider>().changeAge(newAge: _age);
              },
              icon: const Icon(
                Icons.add_circle_outline_outlined,
                size: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
