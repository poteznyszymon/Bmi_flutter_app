import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../consts/colors.dart';

class AgainButton extends StatelessWidget {
  const AgainButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 14,
      child: FilledButton(
        style: FilledButton.styleFrom(
          minimumSize: Size(MediaQuery.of(context).size.height - 40,
              MediaQuery.of(context).size.height / 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(20),
          ),
          backgroundColor: CustomColors.activeBlue,
        ),
        child: Text(
          'TRY AGAIN',
          style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
